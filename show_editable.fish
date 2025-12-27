#!/usr/bin/env fish
# Helper script to show only editable source files

echo "📝 FILES YOU EDIT:"
echo ""
echo "Main config:"
ls -1 _config.yml deploy.sh EDITING_GUIDE.md Gemfile
echo ""
echo "Your content folders:"
ls -1d _projects _news _pages _bibliography _data assets 2>/dev/null
echo ""
echo "To edit content, go into these folders:"
echo "  cd _projects/    # Edit your projects"
echo "  cd _news/        # Edit your news"
echo "  cd _pages/       # Edit main pages"
echo "  cd assets/img/   # Add images"
echo ""
echo "To deploy: ./deploy.sh"
echo ""
echo "💡 Tip: Ignore other folders - they're auto-generated or system files"
