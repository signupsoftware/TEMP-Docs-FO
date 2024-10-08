import clsx from 'clsx';
import Heading from '@theme/Heading';
import styles from './styles.module.css';
import Translate, {translate} from '@docusaurus/Translate';


// This list controls the side menu items of products.
// To add new products, just copy an existing one and change the title and url.
//

/* -- These are the links for Production environment, uncomment before making a commit */
const FeatureList = [
  {
    title: 'EXFLOW AP',
    url: '/finance-operations/docs/user-manual/exflow-home-page/introduction',
  },
  {
    title: 'EXFLOW E-INVOICING',
    url: '/finance-operations/docs/user-manual/document-integration/peppol-service',
  },
  {
    title: 'EXFLOW WEB',
    url: 'https://docs.exflow.cloud/web',
  },
  {
    title: 'EXFLOW DATA CAPTURE',
    url: 'https://docs.exflow.cloud/datacapture',
  },
  
  //{
  //  title: EXFLOW VENDOR STATEMENT,
  //  url: '/finance-operations/docs/',
  //},
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
    url: 'https://docs.exflow.cloud/web',
  },
  {
    title: 'EXFLOW DATA CAPTURE',
    url: 'https://docs.exflow.cloud/datacapture',
  },

  //{
  //  title: EXFLOW VENDOR STATEMENT,
  //  url: '/finance-operations/docs/',
  //},  
];
*/

// Change this to get a new design of the menu items.
//
function Feature({title, url}) {
  return (
    <a href={url} className="menu-item-link">
    <div className="menu-item">
        <Heading as="div">{title}</Heading>
    </div>
    </a>
  );
}


// Menu container
export default function HomepageFeatures() {
  return (
    
    <section className={styles.none}>
      <div class="main-title">
      SOLUTIONS FOR<br/>
      D365 FINANCE AND OPERATIONS
      </div>

      <div className="menu-container">
          {FeatureList.map((props, idx) => (
              <Feature key={idx} {...props} />
          ))}
      </div>
    </section>
  );
}

