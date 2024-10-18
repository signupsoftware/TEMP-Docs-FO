// @ts-check
// `@type` JSDoc annotations allow editor autocompletion and type checking
// (when paired with `@ts-check`).
// There are various equivalent ways to declare your Docusaurus config.
// See: https://docusaurus.io/docs/api/docusaurus-config
//import Translate, {translate} from '@docusaurus/Translate';
import {themes as prismThemes} from 'prism-react-renderer';

// ========================================================================================================
// ========================================================================================================
// IMPORTANT: Ensure DEPLOY_MODE is set to "PROD" before making a pull request.
// This is crucial because the production settings (siteURL and baseURL) need to be correctly configured
// for the live environment. Failing to do so may result in incorrect URLs being used, which can break
// the site or lead to incorrect routing. Always double-check this setting to avoid deployment issues.

//const DEPLOY_MODE = "DEV";
//const DEPLOY_MODE = "PROD";

const siteURL = 'https://docs.exflow.cloud/';    
const baseURL = "/finance-operations/";

//const siteURL = 'http://localhost:3000/';
//const baseURL = "/";

// ========================================================================================================
// ========================================================================================================


/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'ExFlow Documentation Platform',
  tagline: 'ExFlow Documentation Platform',
  favicon: 'img/favicon.ico',

  // Set the production url of your site here
  //url: 'https://thankful-grass-074f8cd03.5.azurestaticapps.net/',
  //url: 'https://localhost:3000/',       // Use this for local dev
  url: 'https://docs.exflow.cloud/',    // Use this for production

 
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  // localhost:3000
  //baseUrl: '/',    // Use this for local dev
  baseUrl: '/finance-operations/',    // Use this for production  
  



  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  organizationName: 'facebook', // Usually your GitHub org/user name.
  projectName: 'docusaurus', // Usually your repo name.

  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',

  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  /*
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
    localeConfigs: {
      en: {
        htmlLang: 'en-GB',
      },
      // de: {
      //   htmlLang: 'de-DE',
      // },
      // // You can omit a locale (e.g. fr) if you don't need to override the defaults
      // fa: {
      //   direction: 'rtl',
      // },
    },
  },
*/

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        /*
        blog: {
          showReadingTime: true,
          // Please change this to your repo.
          // Remove this to remove the "edit this page" links.
          editUrl:
            'https://github.com/facebook/docusaurus/tree/main/packages/create-docusaurus/templates/shared/',
        },
        */
        theme: {
          customCss: './src/css/custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
 
      // Replace with your project's social card
      //image: 'img/docusaurus-social-card.jpg',
      navbar: {

        logo: {
          //alt: 'ExFlow',
          src: 'img/exflow-logo-v5.png',
        },

        items: [
/*          
          {
            type: 'localeDropdown',
            position: 'right',
          },
*/

          {
            label: 'Home',
            position: 'left',
            href: '/',
          },

          {
            label: 'Documentation',
            position: 'left',
            // This is for local dev:
            //href: '/docs/user-manual/exflow-home-page/introduction'            
            // This is for Prod:
            to: 'https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/news'
          },

          {
            label: 'News',
            position: 'left',
            // This is for local dev:
            //href: 'docs/user-manual/whats-new-and-planned/news',
            // This is for Prod:
            to: 'https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/news',
          },

          /* Uncomment this when the Release notes page is ready */
          {            
            label: 'Release notes',
            position: 'left',            
            // This is for local dev:
            //href: '/docs/user-manual/whats-new-and-planned/release-notes'
            // This is for Prod:
            to: 'https://docs.exflow.cloud/finance-operations/docs/user-manual/whats-new-and-planned/release-notes'
          },
          

          /*
          {
            type: 'docSidebar',
            sidebarId: 'tutorialSidebar',
            position: 'left',
            label: 'Tutorial',
          },
          */
        ],
      },
      
      footer: {
        style: 'dark',
        links: [
          {
            title: 'Other documentation',
            items: [
              {
                label: 'ExFlow for BC',
                to: 'https://docs.exflow.cloud/business-central',
              },
              {
                label: 'ExFlow Web',
                to: 'https://docs.exflow.cloud/web'
               
              },
              {
                label: 'ExFlow Data Capture',
                to: 'https://docs.exflow.cloud/datacapture',
              },
            ],
          },
          {
            title: 'More',
            items: [
              {
                label: 'ExFlow support',
                to: 'https://support.signupsoftware.com/',
              },
              {
                label: 'Partner portal',
                href: 'https://azuresignup.sharepoint.com/sites/Signupsoftware',
              },

              {
                label: 'Terms and Conditions',
                href: '/docs/papers/agreements',
              },

            ],
          },
        ],
        copyright: `Copyright © ${new Date().getFullYear()} SignUp Software AB`,
      },
      
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
    }),
};




export default {
  ...config,
  themes: [
    // ... Your other themes.
    [
      require.resolve("@easyops-cn/docusaurus-search-local"),
      /* @type {import("@easyops-cn/docusaurus-search-local").PluginOptions} */
      ({
        // ... Your options.
        // `hashed` is recommended as long-term-cache of index file is possible.
        hashed: true,
        searchResultLimits: 15,
        searchBarShortcutHint: false
        // For Docs using Chinese, The `language` is recommended to set to:
        // ```
        // language: ["en", "zh"],
        // ```
      }),
    ],
  ]
}
