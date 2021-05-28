class INewCTFAnnouncer extends Actor
    abstract;

const MaxSlots = 4;
const MaxNumTeams = 4;

enum EAnnouncementCondition {
    // play for everyone
    ANNC_All,
    // only play for matching team
    ANNC_Team,
    // dont play for matching team
    ANNC_NotTeam
};

enum EAnnouncementSection {
    // Play on General
    ANNS_General,
    // Play on Team-specific
    ANNS_Team
};

struct AnnouncementSlot {
    // The sounds to play
    var() sound Snd;
    //
    var() EAnnouncementCondition Cond;
    //
    var() EAnnouncementSection Section;
    // The volume individual sounds play at is AnnouncerVolume * (1 + VolAdj) for each sound
    var() float VolAdj;
};

struct AnnouncementContent {
    // The sounds to play
    var() AnnouncementSlot Slots[MaxSlots];
    // This is the length of time where this announcement plays without any other announcements
    var() float Duration;
};

// Sounds that should be replaced
var() AnnouncementContent FlagDropped[MaxNumTeams];
var() AnnouncementContent FlagReturned[MaxNumTeams];
var() AnnouncementContent FlagTaken[MaxNumTeams];
var() AnnouncementContent FlagScored[MaxNumTeams];
var() AnnouncementContent Overtime;
var() AnnouncementContent AdvantageGeneric;
var() AnnouncementContent Draw;
var() AnnouncementContent GotFlag;

// Called during initialization.
// Users are expected to fill all AnnouncementContent (see above)
// within this function.
static function InitAnnouncements(INewCTFAnnouncer Announcer);
