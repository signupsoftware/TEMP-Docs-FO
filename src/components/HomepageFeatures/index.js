import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';
import Translate, {translate} from '@docusaurus/Translate';


// This list controls the side menu items of products.
// To add new products, just copy an existing one and change the title and url.
//
/* -- These are the links for Production environment, uncomment before making a commit */
const FeatureList = [
    [
      {
        title: 'ExFlow AP',
        url: '/finance-operations/docs/user-manual/exflow-home-page/introduction',
        index: 0,
      },
      {
        title: 'Axtension Content Gate',
        url: translate({
          message: 'PROXY-LINK-AXT-CONTENT-GATE',
          description: 'Axtension Content Gate link',
        }),
        index: 5,
      },
    ],

    [
      {
        title: 'ExFlow E-Invoicing',
        url: translate({
          message: 'PROXY-LINK-EXFLOW-E-INVOICING',
          description: 'ExFlow E-Invoicing link',
        }),
        index: 1,
      },
      {
        title: 'Axtension Production Planning',
        url: translate({
          message: 'PROXY-LINK-AXT-PROD-PLANNING',
          description: 'Axtension Production Planning link',
        }),
        index: 6,
      },    
    ],
    [
      {
        title: 'ExFlow Web',
        url: 'https://docs.signupsoftware.com/web',
        index: 2,
      },
      {
        title: 'Axtension Project Controlling',
        url: translate({
          message: 'PROXY-LINK-AXT-PROJ-CONTROLLING',
          description: 'Axtension Project Controlling link',
        }),
        index: 7,
      },
    ],
    [
      {
        title: 'ExFlow Data Capture',
        url: 'https://docs.signupsoftware.com/datacapture',
        index: 3, 
      },
      {
        title: 'Axtension Project Management',
        url: translate({
          message: 'PROXY-LINK-AXT-PROJ-MANAGEMENT',
          description: 'Axtension Project Management link',
        }),
        index: 8,
      },
    ],

    [
        {
        title: 'ExFlow Vendor Statement',
        url: translate({
          message: 'PROXY-LINK-EXFLOW-VENDOR-STATEMENT',
          description: 'ExFlow Vendor Statement link',
        }),
        index: 4,
      },
      {
        title: 'Axtension Shipping Control',
        url: translate({
          message: 'PROXY-LINK-AXT-SHIPPING-CONTROL',
          description: 'Axtension Shipping Control link',
        }),
        index: 9,
      },
    ]

];



/* -- These are the links that should be used for local development. */
/*
const FeatureList = [
  {
    title: 'EXFLOW AP',
    url: '/docs/user-manual/exflow-home-page/introduction',
  },
  {
    title: 'EXFLOW E-INVOICING',
    url: '/docs/user-manual/document-integration/peppol-service',
  },
  {
    title: 'EXFLOW WEB',
    url: 'https://docs.signupsoftware.com/web',
  },
  {
    title: 'EXFLOW DATA CAPTURE',
    url: 'https://docs.signupsoftware.com/datacapture',
  },

  //{
  //  title: EXFLOW VENDOR STATEMENT,
  //  url: '/finance-operations/docs/',
  //},  
];
*/



// Change this to get a new design of the menu items.
//
function Feature({title, url, index}) {
  
  // Hide the Axtension buttons for now
  //if (index < 5) {
  return (
    <td>
    <a href={url} className="menu-item-link">
    <div className="menu-item small-drop-shadow">
        <Heading as="div">{title}</Heading>
    </div>
    </a>
    </td>
  );
//}
//  else {
//    return (
//      <td>&nbsp;</td>
//    );
//  }
}

/*
function Feature2({row}) {
  var tmp = row;
  //alert(tmp);
  return (
    <a href={row} className="menu-item-link">
    <div className="menu-item small-drop-shadow">
        <Heading as="div">{row}</Heading>
    </div>
    </a>
  );
}
*/



/*
function LineBreak({ index }) { 
  var lines = [ '', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>','', '<br/>' ];
  return lines[index];
}
*/


// Menu container
export default function HomepageFeatures() {
  return (
    
    <section className={styles.none}>
      <div className="main-title">
      SOLUTIONS FOR<br/>
      D365 FINANCE AND OPERATIONS
      </div>

      <div className="menu-container">
      <table className="main-menu-table" >

      {FeatureList.map(row => (
        <tr>
          <Feature {...row[0]} />
          <Feature {...row[1]} />
        </tr>
      ))}

      </table>

      </div>

    </section>
  );
}

/*

          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}



------------------------


const FeatureList = [
  {
    title: 'EXFLOW AP',
    url: '/finance-operations/docs/user-manual/exflow-home-page/introduction',
    index: 0,
  },
  {
    title: 'EXFLOW E-INVOICING',
    url: '/finance-operations/docs/user-manual/document-integration/peppol-service',
    index: 1,
  },
  {
    title: 'EXFLOW WEB',
    url: 'https://docs.signupsoftware.com/web',
    index: 2,
  },
  {
    title: 'EXFLOW DATA CAPTURE',
    url: 'https://docs.signupsoftware.com/datacapture',
    index: 3, 
  },
  {
    title: 'EXFLOW VENDOR STATEMENT',
    url: 'https://docs.signupsoftware.com/datacapture',
    index: 4,
  },
  {
    title: 'Axtension Content Gate',
    url: 'https://docs.signupsoftware.com/web',
    index: 5,
  },
  {
    title: 'Axtension Production Planning',
    url: 'https://docs.signupsoftware.com/web',
    index: 6,
  },
  {
    title: 'Axtension Project Controlling',
    url: 'https://docs.signupsoftware.com/web',
    index: 7,
  },
  {
    title: 'Axtension Project Management',
    url: 'https://docs.signupsoftware.com/web',
    index: 8,
  },
  {
    title: 'Axtension Shipping Control',
    url: 'https://docs.signupsoftware.com/web',
    index: 9,
  },

*/



/* -- These are the links for Production environment, uncomment before making a commit 
const FeatureList = [
  { row: [
      {
        title: 'EXFLOW AP',
        url: '/finance-operations/docs/user-manual/exflow-home-page/introduction',
        index: 0,
      },
      {
        title: 'Axtension Content Gate',
        url: 'https://docs.signupsoftware.com/web',
        index: 5,
      },
    ]
  },
  { row: [
      {
        title: 'EXFLOW E-INVOICING',
        url: '/finance-operations/docs/user-manual/document-integration/peppol-service',
        index: 1,
      },
      {
        title: 'Axtension Production Planning',
        url: 'https://docs.signupsoftware.com/web',
        index: 6,
      },    
    ]
  },


  { row: [
      {
        title: 'EXFLOW WEB',
        url: 'https://docs.signupsoftware.com/web',
        index: 2,
      },
      {
        title: 'Axtension Project Controlling',
        url: 'https://docs.signupsoftware.com/web',
        index: 7,
      },
    ]
  },

  { row: [
      {
        title: 'EXFLOW DATA CAPTURE',
        url: 'https://docs.signupsoftware.com/datacapture',
        index: 3, 
      },
      {
        title: 'Axtension Project Management',
        url: 'https://docs.signupsoftware.com/web',
        index: 8,
      },
    ]
  },


  { row: [
        {
        title: 'EXFLOW VENDOR STATEMENT',
        url: 'https://docs.signupsoftware.com/datacapture',
        index: 4,
      },
      {
        title: 'Axtension Shipping Control',
        url: 'https://docs.signupsoftware.com/web',
        index: 9,
      },
    ]
  },

  
  //{
  //  title: EXFLOW VENDOR STATEMENT,
  //  url: '/finance-operations/docs/',
  //},
];

*/