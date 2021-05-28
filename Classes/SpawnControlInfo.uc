// Per-Map Spawn System Configuration
// Place one of these on the map in the editor. Change the SpawnControl settings
// to suit the map.
class SpawnControlInfo extends Info;

// Number of player up until which the old spawn system is used
var(SpawnControl) int   SpawnSystemThreshold;
// Range within which any enemy, visible or not will block a spawn
var(SpawnControl) float SpawnEnemyBlockRange;
// Range within which any enemy with vision on the spawn will block it
var(SpawnControl) float SpawnEnemyVisionBlockRange;
// Range within which any friend, visible or not will block a spawn
var(SpawnControl) float SpawnFriendlyBlockRange;
// Range within which any friend with vision will block a spawn
var(SpawnControl) float SpawnFriendlyVisionBlockRange;
// Range within which any flag will block a spawn
var(SpawnControl) float SpawnFlagBlockRange;

DefaultProperties
{
    SpawnSystemThreshold=4
    SpawnEnemyBlockRange=500.0
    SpawnEnemyVisionBlockRange=1000.0
    SpawnFriendlyBlockRange=150.0
    SpawnFriendlyVisionBlockRange=150.0
    SpawnFlagBlockRange=500.0
}
