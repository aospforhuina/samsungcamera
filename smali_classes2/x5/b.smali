.class public Lx5/b;
.super Ljava/lang/Object;
.source "PopupStyleResourceIdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx5/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;",
            "Lx5/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lx5/b;->a:Ljava/util/EnumMap;

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V2_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301f0

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V3_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301f2

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING_WITH_HISTOGRAM_PRO_VIDEO_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130371

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_ROCKER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f13050d

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->BACK_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130191

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FRONT_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->MACRO_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130179

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 9
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_CAPTURE_TIPS_CAPTURE_VIDEO:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301eb

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_CAPTURE_TIPS_CAPTURE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301ea

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 11
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_LOCK_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f13050c

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->RECORDING_360_BT_MIC_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301cf

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 13
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_ANGLE_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301e9

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301ee

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 15
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_TURN_OFF_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301e7

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_ONLY_TURN_OFF_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301e6

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 17
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_TURN_OFF_SUPPORT_STAR_BURST_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301e8

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 18
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FUN_MODE_NETWORK_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130170

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 19
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FUN_MODE_USER_CONSENT_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130171

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 20
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DECO_PIC_MODE_NETWORK_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130165

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 21
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ADDING_FILTERS_BUTTON_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const/high16 v2, 0x7f130000

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 22
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->EDIT_FILTERS_DOWNLOAD_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f13016a

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 23
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->EDIT_FILTERS_CREATE_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 24
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130159

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 25
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DIRTY_LENS_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130168

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 26
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->MORE_EDIT_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f13018d

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 27
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f13036c

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 28
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FLASH_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 29
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->TORCH_HIGH_TEMPERATURE_WARNING_DURING_RECORDING_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f13036e

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 30
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->VIDEO_HIGH_RESOLUTION_TEMPERATURE_WARNING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130172

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 31
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->HYPER_LAPSE_NIGHT_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130174

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 32
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->HYPER_LAPSE_NIGHT_HELP_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130173

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 33
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->HYPER_LAPSE_TRAILS_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130175

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SUPER_SLOW_MOTION_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f13036f

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 35
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->AUTO_FRAMING_ON_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130011

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 36
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->AUTO_FRAMING_OFF_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130010

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 37
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DOCUMENT_SAVED:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 38
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f13016f

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 39
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DETAIL_ENHANCER_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f130167

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 40
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOCUS_ENHANCER_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v4, 0x7f13016e

    invoke-direct {v1, v4}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 41
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->VIDEO_FOCUS_ENHANCER_FIRST_USE_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v4}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 42
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->VIDEO_FOCUS_ENHANCER_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v4}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 43
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOCUS_ENHANCER_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 44
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->NIGHT_SHOT_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 45
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->MOBILE_DATA_NOTICE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 46
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PANORAMA_HELP_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v3, 0x7f13036d

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 47
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOOD_HELP_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 48
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->MACRO_HELP_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v3}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 49
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 50
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_VIDEO_AUDIO_INPUT_TOAST:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 51
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_LONG_EXPOSURE_WAIT_TOAST:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f130370

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 52
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_ISO:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301c8

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 53
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301ca

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 54
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_EV:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301c7

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 55
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_MF:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301c9

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 56
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_WB:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301cd

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 57
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_WIDE_LENS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301ce

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 58
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_ULTRA_WIDE_LENS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301cc

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    .line 59
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->PRO_TIPS_TELE_LENS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    new-instance v1, Lx5/b$a;

    const v2, 0x7f1301cb

    invoke-direct {v1, v2}, Lx5/b$a;-><init>(I)V

    invoke-static {v0, v1}, Lx5/b;->a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V

    return-void
.end method

.method private static a(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Lx5/b$a;)V
    .locals 1

    sget-object v0, Lx5/b;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Lx5/b$a;
    .locals 1

    sget-object v0, Lx5/b;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx5/b$a;

    return-object p0
.end method
