<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'MYSQL_DATABASE' );

/** MySQL database username */
define( 'DB_USER', 'MYSQL_USER' );

/** MySQL database password */
define( 'DB_PASSWORD', 'MYSQL_PASSWORD' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'TDxoB2`>{NZcv`<dYtA?/TRY<9 d`xjW-c-nx7pr$kX;_zoYL}/pKIfyZD;u,&FT' );
define( 'SECURE_AUTH_KEY',  'I!_*W0yy,B&r0],5w@7@rkUI~//.P8?XYwv^T)C%*Z(C^S%y}4A9_~2w!K_BEZGz' );
define( 'LOGGED_IN_KEY',    'G|&1*x)o*<^.o;]LrHRU7(Vw|YC~^HUG>OKj{! T:~dhHp6DWX9AgMiI/35T!c|%' );
define( 'NONCE_KEY',        '21hbt^Nwu]-iyd*R)iXf~@^noiHd!Yr}IUYyvYN.TIa:`,(.]M_ YtsL1qHUtkfK' );
define( 'AUTH_SALT',        'WWl67n^L@cv*AMa/nC+`D:TO?mRO&74FM8%@;zR/}};$Z:.E8H}z<(>He(*!76Jp' );
define( 'SECURE_AUTH_SALT', 'tvO|YN8lKzH19B<8zWo[Q9-R2_]Wq!><@12,[aWUsd)G^{|^-mJAO<BG8c%`dTlQ' );
define( 'LOGGED_IN_SALT',   '!+ {D#iUyR@ {d,/&wbv[J}{.I~TKA0sdan6+A%4x2B/rrcs=En7?EakaC< ,Y3=' );
define( 'NONCE_SALT',       '#U~*XqSIQd2BqmSk=%Z^B!2TB!7Pp7#YoAxG,W2c5h,IINI/*}?A-G`/5O2iy{OI' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
