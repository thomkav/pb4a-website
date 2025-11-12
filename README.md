# Portland Businesses For All Website

This is a static website built with [11ty](https://www.11ty.dev/) and [Netlify CMS](https://www.netlifycms.org/) for easy content management.

## Local Development

### Prerequisites
- Node.js (v16 or higher)
- npm

### Setup

1. Install dependencies:
   ```bash
   cd /home/thomas/dev/pb4a/website
   npm install
   ```

2. Start the development server:
   ```bash
   npm start
   ```

3. Open your browser to `http://localhost:8341`

The site will auto-reload when you make changes to templates or content.

## Project Structure

```
website/
├── src/
│   ├── _includes/       # Layout templates (Nunjucks)
│   │   ├── base.njk     # Main HTML wrapper
│   │   └── page.njk     # Page layout
│   ├── _data/           # Global data files
│   │   └── site.json    # Site settings (name, email, etc.)
│   ├── admin/           # Netlify CMS configuration
│   │   ├── config.yml   # CMS settings and content types
│   │   └── index.html   # CMS entry point
│   ├── pages/           # Content pages (Markdown)
│   ├── css/             # Stylesheets
│   └── assets/          # Images and other static files
├── _site/               # Generated site (gitignored)
├── .eleventy.js         # 11ty configuration
└── package.json         # Dependencies and scripts
```

## Editing Content

### As a Developer (Local)

Edit files directly in the `src/` directory:
- **Pages**: Add/edit Markdown files in `src/pages/`
- **Templates**: Modify Nunjucks templates in `src/_includes/`
- **Styles**: Update `src/css/style.css`
- **Site Settings**: Edit `src/_data/site.json`

### As a Non-Technical User (After Netlify Deployment)

1. Go to `https://your-site.netlify.app/admin/`
2. Log in with your Netlify Identity credentials
3. Add or edit pages through the visual interface
4. Changes are automatically deployed when you save

## Deployment to Netlify

### Step 1: Create a GitHub Repository

1. Initialize git in this directory (if not already done):
   ```bash
   cd /home/thomas/dev/pb4a/website
   git init
   git add .
   git commit -m "Initial commit: 11ty + Netlify CMS setup"
   ```

2. Create a new repository on GitHub (e.g., `pb4a-website`)

3. Push to GitHub:
   ```bash
   git remote add origin https://github.com/YOUR-USERNAME/pb4a-website.git
   git branch -M main
   git push -u origin main
   ```

### Step 2: Deploy to Netlify

1. Go to [https://app.netlify.com/](https://app.netlify.com/) and sign up/log in

2. Click "Add new site" → "Import an existing project"

3. Choose GitHub and select your `pb4a-website` repository

4. Netlify should auto-detect the settings from `netlify.toml`:
   - Build command: `npm run build`
   - Publish directory: `_site`

5. Click "Deploy site"

### Step 3: Enable Netlify Identity (for CMS access)

1. In your Netlify site dashboard, go to "Identity"

2. Click "Enable Identity"

3. Under "Registration preferences", select "Invite only"

4. Under "Services" → "Git Gateway", click "Enable Git Gateway"

5. Go to "Identity" tab and click "Invite users"

6. Send an invitation to jenna@shiftaccountingllc.com (or other users)

### Step 4: Configure Custom Domain (Optional)

1. In Netlify dashboard, go to "Domain settings"

2. Click "Add custom domain"

3. Follow instructions to point your domain's DNS to Netlify

## Adding New Pages (via CMS)

Once deployed, non-technical users can:

1. Go to `your-site.com/admin/`
2. Click "Pages" → "New Page"
3. Fill in:
   - Title
   - Permalink (optional, e.g., `/join/`)
   - Order (for navigation)
   - Body content
4. Click "Publish"

The page will automatically appear in the navigation menu.

## Customization Tips

### Changing Colors

Edit CSS variables in `src/css/style.css`:
```css
:root {
  --primary-color: #2c5f8d;  /* Main brand color */
  --secondary-color: #f4a261; /* Accent color */
}
```

### Adding New Content Types

Edit `src/admin/config.yml` to add new collections (e.g., blog posts, team members)

### Modifying Templates

Edit Nunjucks templates in `src/_includes/` for structural changes

## Support

For issues or questions:
- 11ty Documentation: https://www.11ty.dev/docs/
- Netlify CMS Documentation: https://www.netlifycms.org/docs/
- Contact the developer (Thomas)
