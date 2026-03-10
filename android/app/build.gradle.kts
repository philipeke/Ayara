import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")

    // ✅ Firebase
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")

    // Flutter
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.oakdev.nuria"
    compileSdk = 36

    defaultConfig {
        applicationId = "com.oakdev.nuria"
        minSdk = flutter.minSdkVersion
        targetSdk = 36

        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    ndkVersion = "27.0.12077973"

    externalNativeBuild {
        cmake { version = "3.22.1" }
    }

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    buildFeatures {
        buildConfig = true
    }

    // ----------------------------------------------------
    // 🔐 Signing config (release required)
    // ----------------------------------------------------

    fun gp(name: String): String? {
        val a = (project.findProperty(name) as String?)?.trim()
        if (!a.isNullOrEmpty()) return a

        val b = (rootProject.findProperty(name) as String?)?.trim()
        if (!b.isNullOrEmpty()) return b

        return null
    }

    val ksPath  = gp("MY_KEYSTORE")
    val ksPass  = gp("MY_KEYSTORE_PASSWORD")
    val alias   = gp("MY_KEY_ALIAS")
    val keyPass = gp("MY_KEY_PASSWORD")

    signingConfigs {
        create("release") {
            if (!ksPath.isNullOrBlank()
                && !ksPass.isNullOrBlank()
                && !alias.isNullOrBlank()
                && !keyPass.isNullOrBlank()
            ) {
                val f = rootProject.file(ksPath)
                if (!f.exists()) {
                    throw GradleException(
                        "Release keystore not found at: ${f.absolutePath} (MY_KEYSTORE=$ksPath)"
                    )
                }

                storeFile = f
                storePassword = ksPass
                keyAlias = alias
                this.keyPassword = keyPass
            }
        }
    }

    buildTypes {

        getByName("debug") {}

        getByName("release") {
            isMinifyEnabled = false
            isShrinkResources = false

            if (ksPath.isNullOrBlank()
                || ksPass.isNullOrBlank()
                || alias.isNullOrBlank()
                || keyPass.isNullOrBlank()
            ) {
                throw GradleException(
                    "Release-signering saknas. Kontrollera MY_KEYSTORE, MY_KEYSTORE_PASSWORD, MY_KEY_ALIAS, MY_KEY_PASSWORD i gradle.properties."
                )
            }

            signingConfig = signingConfigs.getByName("release")
        }
    }

    packaging {
        resources {
            excludes += setOf(
                "META-INF/DEPENDENCIES",
                "META-INF/AL2.0",
                "META-INF/LGPL2.1"
            )
        }
    }
}

// ----------------------------------------------------
// ✅ Remove deprecated SafetyNet (we use Play Integrity)
// ----------------------------------------------------
configurations.all {
    exclude(group = "com.google.android.gms", module = "play-services-safetynet")
    exclude(group = "com.google.firebase", module = "firebase-appcheck-safetynet")
}

flutter {
    source = "../.."
}

// ----------------------------------------------------
// ✅ Dependencies
// ----------------------------------------------------
dependencies {

    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")

    // ✅ Firebase BoM (single source of truth)
    implementation(platform("com.google.firebase:firebase-bom:34.9.0"))

    // Analytics (required baseline)
    implementation("com.google.firebase:firebase-analytics")

    // Crashlytics
    implementation("com.google.firebase:firebase-crashlytics")
}

