<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'ujiwordpress2' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'ZbB{Zay0^Q5{=a7KA,7%uKU|I6}H}PQ$,t~7:a?j8E40[+K.T^ZZ:Z8~6c[R6&n2' );
define( 'SECURE_AUTH_KEY',  '1K|a?:r x+M{<x{k*ovnALHW?W-cQkYrnOq+]g^G=nIu$I+OA_s[vO+7Cpw4HG,x' );
define( 'LOGGED_IN_KEY',    'wdusZKTjX6Z>$/[LR `[3L<E0U)1<;ziM-F911U__U:3Srtk^T[`n6_fS~7A9udA' );
define( 'NONCE_KEY',        ';$,8lD]JT`]s0gH*4DscB2c!5CxG,!tQPp{ZvSqW/;T<56f;w:]B$$%2fhO&tmUA' );
define( 'AUTH_SALT',        '~^?wTR(BWwgL*2G8NhyzIu]Y!hPM4n}&wFK3K%Crs/!Zo@*%:d~J}r}1|kYpyu&X' );
define( 'SECURE_AUTH_SALT', 'o Eh&&Jl:T4S@AeX_/&#M2JbovZH>]3*.SyFPOj`p1#J,st`i&5Y%^*J>mLhUT$n' );
define( 'LOGGED_IN_SALT',   '=]FiJrA6i?vJ8A ~7rrskl6%s`%XXiuHY^Wu7UdDCK2K9JbqYL]~CRNfsU5&nqdW' );
define( 'NONCE_SALT',       'AJ3e&SrML#K+^xf=-]T4O2[au2_I8eaPesg&mYfQ@Ny,3aBS@k%K[s59oGXUuhIz' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
