import re
import os
import glob
import json

arb_path = r"C:\Users\phiek\dev\Ayara\lib\l10n\app_en.arb"

with open(arb_path, "r", encoding="utf-8") as f:
    content = f.read()

# -------------------------
# Step 1: Key renames (rename only the key string, not values)
# -------------------------

renames = [
    # Plan renames
    ('"planGrace":', '"planBasic":'),
    ('"planBlessed":', '"planPremium":'),

    # Category renames
    ('"categoryDailyGuidance":', '"categorySlot01":'),
    ('"categoryFaithTrust":', '"categorySlot02":'),
    ('"categoryPrayerReflection":', '"categorySlot03":'),
    ('"categoryHopeDifficultTimes":', '"categorySlot04":'),
    ('"categoryForgiveness":', '"categorySlot05":'),
    ('"categoryLoveCompassion":', '"categorySlot06":'),
    ('"categoryStrengthCourage":', '"categorySlot07":'),
    ('"categoryGratitude":', '"categorySlot08":'),
    ('"categoryPurposeCalling":', '"categorySlot09":'),
    ('"categoryFamilyRelationships":', '"categorySlot10":'),
    ('"categoryPeaceAnxietyRelief":', '"categorySlot11":'),
    ('"categoryWisdomOfJesus":', '"categorySlot12":'),
    ('"categoryHumilityCharacter":', '"categorySlot13":'),
    ('"categoryOvercomingTemptation":', '"categorySlot14":'),
    ('"categoryEveningReflection":', '"categorySlot15":'),

    # Prompt renames
    ('"promptDailyGuidance":', '"promptSlot01":'),
    ('"promptFaithTrust":', '"promptSlot02":'),
    ('"promptPrayerReflection":', '"promptSlot03":'),
    ('"promptHopeDifficultTimes":', '"promptSlot04":'),
    ('"promptForgiveness":', '"promptSlot05":'),
    ('"promptLoveCompassion":', '"promptSlot06":'),
    ('"promptStrengthCourage":', '"promptSlot07":'),
    ('"promptGratitude":', '"promptSlot08":'),
    ('"promptPurposeCalling":', '"promptSlot09":'),
    ('"promptFamilyRelationships":', '"promptSlot10":'),
    ('"promptPeaceAnxietyRelief":', '"promptSlot11":'),
    ('"promptWisdomOfJesus":', '"promptSlot12":'),
    ('"promptHumilityCharacter":', '"promptSlot13":'),
    ('"promptOvercomingTemptation":', '"promptSlot14":'),
    ('"promptEveningReflection":', '"promptSlot15":'),

    # champion -> premium in existing premium* keys
    ('"premiumSubtitleChampion":', '"premiumSubtitlePremium":'),
    ('"premiumBecomeChampionOneTime":', '"premiumBecomePremiumOneTime":'),
    ('"premiumChampionHint":', '"premiumTopupHint":'),
    ('"premiumButtonBecomeChampion":', '"premiumButtonBecomePremium":'),
    ('"premiumChampionBadge":', '"premiumBadge":'),
    ('"premiumBenefitsChampion":', '"premiumBenefitsPremium":'),

    # reflections -> credits in key names
    ('"reflectionsSectionTitle":', '"creditsSectionTitle":'),
    ('"reflectionsUsageLabel":', '"creditsUsageLabel":'),
    ('"reflectionsRemainingLabel":', '"creditsRemainingLabel":'),
    ('"@reflectionsRemainingLabel":', '"@creditsRemainingLabel":'),
    ('"reflectionsPlanLabel":', '"creditsPlanLabel":'),
    ('"@reflectionsPlanLabel":', '"@creditsPlanLabel":'),
    ('"reflectionsLoadingLabel":', '"creditsLoadingLabel":'),
    ('"reflectionsLoadingLabelDescription":', '"creditsLoadingLabelDescription":'),
    ('"reflectionsTitle":', '"creditsTitle":'),
    ('"reflectionsSubtitle":', '"creditsSubtitle":'),
    ('"reflectionsProgressLabel":', '"creditsProgressLabel":'),
    ('"@reflectionsProgressLabel":', '"@creditsProgressLabel":'),
    ('"settingsStarterReflectionsUsedTitle":', '"settingsStarterCreditsUsedTitle":'),
    ('"settingsStarterReflectionsUsedDescription":', '"settingsStarterCreditsUsedDescription":'),
    ('"rateGraceReflectionsExhausted":', '"rateGraceCreditsExhausted":'),

    # blessed* -> premium* renames (only those that survive, not deleted)
    ('"blessedProductNotAvailable":', '"premiumProductNotAvailable":'),
    ('"blessedPurchaseError":', '"premiumPurchaseError":'),
    ('"blessedBuyReflections100":', '"premiumBuyCredits100":'),
    ('"blessedFeatureLocked":', '"premiumFeatureLocked":'),

    # Other
    ('"graceBlockedCtaGoBlessed":', '"graceBlockedCtaGoPremium":'),
]

for old, new in renames:
    content = content.replace(old, new)

print("Renames done.")

# -------------------------
# Step 2: Delete keys
# -------------------------

keys_to_delete = [
    "championDescription",
    "blessedTitle",
    "blessedSubtitleGrace",
    "blessedSubtitleBlessed",
    "blessedCurrentPlan",
    "blessedReflectionsStatus",
    "blessedPurchasesUnavailable",
    "blessedSignInToPurchase",
    "blessedRestorePurchases",
    "blessedProcessing",
    "blessedRestoreHintTitle",
    "blessedRestoreHintBody",
    "blessedBuyReflections200",
    "blessedBuyReflections400",
    "blessedBecomeBlessedOneTime",
    "blessedTopupHint",
    "blessedUpgradeCta",
    "blessedRequiredForCategory",
    "blessedBenefitsGrace",
    "blessedBenefitsBlessed",
    "blessedButtonBecomeBlessed",
    "blessedButtonTopup1000",
    "blessedBadge",
    "blessedLoadingStore",
    "rateReflectionsExhausted",
    "guestNoReflectionsTitle",
    "guestNoReflectionsBody",
]

lines = content.split("\n")
result_lines = []
i = 0
while i < len(lines):
    line = lines[i]
    matched_delete = False
    for key in keys_to_delete:
        pattern = re.match(r'^(\s*)"' + re.escape(key) + r'":', line)
        if pattern:
            stripped = line.rstrip()
            if stripped.endswith('{'):
                # Multi-line object - skip until matching closing }
                depth = 0
                j = i
                while j < len(lines):
                    depth += lines[j].count('{') - lines[j].count('}')
                    if depth <= 0 and j > i:
                        j += 1
                        break
                    j += 1
                i = j
            else:
                # Single line
                i += 1
            matched_delete = True
            break
    if not matched_delete:
        result_lines.append(line)
        i += 1

content = "\n".join(result_lines)
print("Deletions done.")

# Clean up 3+ consecutive blank lines
content = re.sub(r'\n{3,}', '\n\n', content)

# Write back
with open(arb_path, "w", encoding="utf-8", newline="\n") as f:
    f.write(content)

print("ARB file written.")

# Validate JSON
try:
    with open(arb_path, "r", encoding="utf-8") as f:
        parsed = json.load(f)
    print(f"JSON valid. Keys count: {len(parsed)}")
except json.JSONDecodeError as e:
    print(f"JSON INVALID: {e}")

# -------------------------
# Step 3: Rename Dart getter references in lib/**/*.dart
# -------------------------

# Map of old getter name -> new getter name
dart_renames = {
    "planGrace": "planBasic",
    "planBlessed": "planPremium",
    "categoryDailyGuidance": "categorySlot01",
    "categoryFaithTrust": "categorySlot02",
    "categoryPrayerReflection": "categorySlot03",
    "categoryHopeDifficultTimes": "categorySlot04",
    "categoryForgiveness": "categorySlot05",
    "categoryLoveCompassion": "categorySlot06",
    "categoryStrengthCourage": "categorySlot07",
    "categoryGratitude": "categorySlot08",
    "categoryPurposeCalling": "categorySlot09",
    "categoryFamilyRelationships": "categorySlot10",
    "categoryPeaceAnxietyRelief": "categorySlot11",
    "categoryWisdomOfJesus": "categorySlot12",
    "categoryHumilityCharacter": "categorySlot13",
    "categoryOvercomingTemptation": "categorySlot14",
    "categoryEveningReflection": "categorySlot15",
    "promptDailyGuidance": "promptSlot01",
    "promptFaithTrust": "promptSlot02",
    "promptPrayerReflection": "promptSlot03",
    "promptHopeDifficultTimes": "promptSlot04",
    "promptForgiveness": "promptSlot05",
    "promptLoveCompassion": "promptSlot06",
    "promptStrengthCourage": "promptSlot07",
    "promptGratitude": "promptSlot08",
    "promptPurposeCalling": "promptSlot09",
    "promptFamilyRelationships": "promptSlot10",
    "promptPeaceAnxietyRelief": "promptSlot11",
    "promptWisdomOfJesus": "promptSlot12",
    "promptHumilityCharacter": "promptSlot13",
    "promptOvercomingTemptation": "promptSlot14",
    "promptEveningReflection": "promptSlot15",
    "premiumSubtitleChampion": "premiumSubtitlePremium",
    "premiumBecomeChampionOneTime": "premiumBecomePremiumOneTime",
    "premiumChampionHint": "premiumTopupHint",
    "premiumButtonBecomeChampion": "premiumButtonBecomePremium",
    "premiumChampionBadge": "premiumBadge",
    "premiumBenefitsChampion": "premiumBenefitsPremium",
    "reflectionsSectionTitle": "creditsSectionTitle",
    "reflectionsUsageLabel": "creditsUsageLabel",
    "reflectionsRemainingLabel": "creditsRemainingLabel",
    "reflectionsPlanLabel": "creditsPlanLabel",
    "reflectionsLoadingLabel": "creditsLoadingLabel",
    "reflectionsLoadingLabelDescription": "creditsLoadingLabelDescription",
    "reflectionsTitle": "creditsTitle",
    "reflectionsSubtitle": "creditsSubtitle",
    "reflectionsProgressLabel": "creditsProgressLabel",
    "settingsStarterReflectionsUsedTitle": "settingsStarterCreditsUsedTitle",
    "settingsStarterReflectionsUsedDescription": "settingsStarterCreditsUsedDescription",
    "rateGraceReflectionsExhausted": "rateGraceCreditsExhausted",
    "rateReflectionsExhausted": "rateCreditsExhausted",
    "guestNoReflectionsTitle": "guestNoCreditsTitle",
    "guestNoReflectionsBody": "guestNoCreditsBody",
    "blessedDescription": "premiumDescription",
    "blessedProductNotAvailable": "premiumProductNotAvailable",
    "blessedPurchaseError": "premiumPurchaseError",
    "blessedBuyReflections100": "premiumBuyCredits100",
    "blessedFeatureLocked": "premiumFeatureLocked",
    "graceBlockedCtaGoBlessed": "graceBlockedCtaGoPremium",
    # blessed* keys that become their premium equivalents
    "blessedTitle": "premiumTitle",
    "blessedSubtitleGrace": "premiumSubtitleBasic",
    "blessedSubtitleBlessed": "premiumSubtitlePremium",
    "blessedCurrentPlan": "premiumCurrentPlan",
    "blessedReflectionsStatus": "premiumCreditsStatus",
    "blessedPurchasesUnavailable": "premiumPurchasesUnavailable",
    "blessedSignInToPurchase": "premiumSignInToPurchase",
    "blessedRestorePurchases": "premiumRestorePurchases",
    "blessedProcessing": "premiumProcessing",
    "blessedRestoreHintTitle": "premiumRestoreHintTitle",
    "blessedRestoreHintBody": "premiumRestoreHintBody",
    "blessedBuyReflections200": "premiumBuyCredits200",
    "blessedBuyReflections400": "premiumBuyCredits400",
    "blessedBecomeBlessedOneTime": "premiumBecomePremiumOneTime",
    "blessedTopupHint": "premiumTopupHint",
    "blessedUpgradeCta": "premiumUpgradeCta",
    "blessedRequiredForCategory": "premiumRequiredForCategory",
    "blessedBenefitsGrace": "premiumBenefitsBasic",
    "blessedBenefitsBlessed": "premiumBenefitsPremium",
    "blessedButtonBecomeBlessed": "premiumButtonBecomePremium",
    "blessedButtonTopup1000": "premiumButtonTopup1000",
    "blessedBadge": "premiumBadge",
    "blessedLoadingStore": "premiumLoadingStore",
}

lib_dir = r"C:\Users\phiek\dev\Ayara\lib"
dart_files = glob.glob(os.path.join(lib_dir, "**", "*.dart"), recursive=True)

total_changes = 0
changed_files = []

# Sort by length of old key descending to avoid partial replacements
sorted_renames = sorted(dart_renames.items(), key=lambda x: len(x[0]), reverse=True)

for dart_file in dart_files:
    with open(dart_file, "r", encoding="utf-8") as f:
        dart_content = f.read()

    original = dart_content
    for old_key, new_key in sorted_renames:
        # Match getter access: .oldKey (word boundary after)
        # Use word boundary to avoid partial matches
        pattern = r'\.' + re.escape(old_key) + r'(?=\b|[^a-zA-Z0-9_]|$)'
        replacement = '.' + new_key
        dart_content = re.sub(pattern, replacement, dart_content)

    if dart_content != original:
        with open(dart_file, "w", encoding="utf-8") as f:
            f.write(dart_content)
        count = sum(dart_content.count('.' + new_key) - original.count('.' + new_key)
                    for _, new_key in sorted_renames)
        changed_files.append(dart_file)
        total_changes += 1

print(f"Dart files updated: {len(changed_files)}")
for cf in changed_files:
    print(f"  {cf}")
