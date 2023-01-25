/***********************************/
# DEV Variables
/***********************************/

##Password is not saved in here - you will be prompted for this for both the database server and the wordpress installation.

#Tags
tags = {
  AppProfile = "Wordpress"
}

#Conditional deployment flags
deploy_azure_storage_account = true //Deploy storage account for use with Wordpress
deploy_azure_cdn             = false //If true then FrontDoor MUST be false
deploy_azure_frontdoor       = false //If true then CDN MUST be false

#Resource Group
resource_group_name = "odin-wp-rg"

#Location - set all resources to RG location as default
resource_group_location = "North Europe"

#VNet Name
virtual_network_name = "odin-app-vnet"

#VNet CIDR Address Block
virtual_network_address_space = "10.0.0.0/16"

#App Subnet name
virtual_network_app_subnet_name = "odin-app-subnet"

#App Subnet CIDR
virtual_network_app_subnet_cidr = "10.0.0.0/24"

#DB Subnet name
virtual_network_db_subnet_name = "odin-db-subnet"

#DB Subnet CIDR
virtual_network_db_subnet_cidr = "10.0.1.0/24"

#App Service Plan Name
app_service_hosting_plan_name = "odin-appsvc-plan"

#Web App Name prefix
app_service_web_app_prefix = "odin-web"


#App Svc SKU
app_service_hosting_plan_sku = "B1"

#DB ServerName
mysql_server_name = "odin-app-dbsrv01"

#DB Username
mysql_server_username = "odinusr"

#WP DB Name
mysql_wordpress_database_name = "odin-app-database"

#WP Admin email
wordpress_admin_email = "info@odinsportswear.com"

#WP UserAdmin
wordpress_admin_admin_user_name = "odin-wpappuser"

#WP Title
wordpress_default_site_title = "Odinsportswear.com"

#WP Locale
wordpress_locale_code = "nl_NL"


#MYSQL SKU
mysql_db_sql_sku = "B_Standard_B1s"

#MYSQL Storage Size
mysql_db_storage_size_gb = "128"

#MySQL Storage IOPs
mysql_db_storage_iops = "700"

#MYSQL Autogrow
mysql_db_storage_autogrow = "Enabled"

#MYSql backup retention days
mysql_db_database_backup_retention_days = "7"

#Enable MySQL Geo-Redundant Backup
mysql_db_database_georedundant_backup = "false"

#CDN Endpoint Name
cdn_endpoint_name = "odinendpoint"

#CDN Profile Name
cdn_profile_name = "appsvc-cdnprofile"

#Private DNS Zone Name for DB
private_dns_zone_name_for_db = "odindb-privatelink.mysql.database.azure.com"

/*
Azure Front Door Policy vars
*/
afd_profile_name     = "wp-appsvc-afdprofile"
afd_endpoint_name    = "wp-appsvc-afdEndPoint"
afd_origingroup_name = "wp-appsvc-afdOriginGroup"
afd_origins_name     = "wp-appsvc-afdOrigins"
afd_ruleset_name     = "wpappsvcruleset"