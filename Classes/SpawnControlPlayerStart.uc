// Per Spawn-Point Configuration
// Use one of these instead of PlayerStarts to adjust block radius on a per-spawn basis.
// Should probably be used sparingly to not defeat player intuition about how far they
// have to be away from spawns to block them.
class SpawnControlPlayerStart extends PlayerStart;

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
    SpawnEnemyBlockRange=500.0
    SpawnEnemyVisionBlockRange=1000.0
    SpawnFriendlyBlockRange=150.0
    SpawnFriendlyVisionBlockRange=150.0
    SpawnFlagBlockRange=500.0
}
