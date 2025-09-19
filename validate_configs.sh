#!/bin/bash
# Configuration Validation Script
# Use this to check if all configuration files are present

echo "🔍 Arista Exam Configuration Validation"
echo "========================================"

# Base directory
BASE_DIR="$(dirname "$0")/configs"
MISSING_FILES=0

# Check basic configuration files
echo "📁 Checking basic configuration files..."
BASIC_FILES=("basic-switch.cfg" "management.cfg" "interfaces.cfg" "vlans.cfg" "routing.cfg")

for file in "${BASIC_FILES[@]}"; do
    if [ -f "$BASE_DIR/$file" ]; then
        echo "✅ $file - Found"
    else
        echo "❌ $file - Missing"
        ((MISSING_FILES++))
    fi
done

# Check scenario files
echo ""
echo "📁 Checking scenario files..."
SCENARIO_FILES=("scenarios/scenario1.md" "scenarios/core-router.cfg" "scenarios/distribution-switch.cfg" "scenarios/access-switch.cfg")

for file in "${SCENARIO_FILES[@]}"; do
    if [ -f "$BASE_DIR/$file" ]; then
        echo "✅ scenarios/$(basename $file) - Found"
    else
        echo "❌ scenarios/$(basename $file) - Missing"
        ((MISSING_FILES++))
    fi
done

# Check README files
echo ""
echo "📁 Checking documentation..."
DOC_FILES=("README.md" "configs/README.md" "CONFIG_INDEX.md")

for file in "${DOC_FILES[@]}"; do
    if [ -f "$(dirname "$0")/$file" ]; then
        echo "✅ $file - Found"
    else
        echo "❌ $file - Missing"
        ((MISSING_FILES++))
    fi
done

# Summary
echo ""
echo "📊 Validation Summary"
echo "===================="
if [ $MISSING_FILES -eq 0 ]; then
    echo "🎉 All configuration files are present!"
    echo "✅ Repository is ready for Arista exam preparation"
else
    echo "⚠️  Found $MISSING_FILES missing files"
    echo "❌ Some configurations may be incomplete"
fi

# File count summary
echo ""
echo "📈 File Statistics:"
echo "  - Configuration files: $(find "$BASE_DIR" -name "*.cfg" | wc -l)"
echo "  - Documentation files: $(find "$(dirname "$0")" -name "*.md" | wc -l)"
echo "  - Total files: $(find "$(dirname "$0")" -type f | wc -l)"

echo ""
echo "💡 Next steps:"
echo "  1. Review configurations in configs/ directory"
echo "  2. Study CONFIG_INDEX.md for feature overview"
echo "  3. Practice with scenario-based configurations"
echo "  4. Adapt configurations to your lab environment"