.class Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;
.super Ljava/lang/Object;
.source "PopupConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;,
        Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;,
        Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;
    }
.end annotation


# static fields
.field private static final INTELLIGENT_POPUP_OFFSET:J = 0x5265c00L

.field private static final KEY_ADDING_FILTERS_BUTTON_TIPS_COUNT:Ljava/lang/String; = "pref_adding_filters_button_tips_count"

.field private static final KEY_BACK_NIGHT_MODE_SUGGESTION_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_back_night_mode_suggestion_tips_not_used_count"

.field private static final KEY_BURST_SHOT_GUIDE_ON_QUICK_TAKE_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_burst_shot_guide_on_quick_take_not_used_count"

.field private static final KEY_EDIT_FILTERS_CREATE_TIPS_ENABLED:Ljava/lang/String; = "pref_edit_filters_create_tips_count"

.field private static final KEY_EDIT_FILTERS_DOWNLOAD_TIPS_ENABLED:Ljava/lang/String; = "pref_edit_filters_download_tips_count"

.field private static final KEY_FOCUS_ENHANCER_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_focus_enhancer_guide_not_used_count"

.field private static final KEY_FRONT_NIGHT_MODE_SUGGESTION_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_front_night_mode_suggestion_tips_not_used_count"

.field private static final KEY_FUN_MODE_NETWORK_POPUP:Ljava/lang/String; = "pref_smart_tips_fun_mode_network_popup"

.field private static final KEY_FUN_MODE_USER_CONSENT_POPUP:Ljava/lang/String; = "pref_smart_tips_fun_mode_user_consent_popup"

.field private static final KEY_MORE_EDIT_HELP:Ljava/lang/String; = "pref_help_second_page"

.field private static final KEY_SCENE_ONLY_TURN_OFF_BY_APPLY_FILTER_COUNT:Ljava/lang/String; = "pref_scene_only_turn_off_by_apply_filter_count"

.field private static final KEY_SCENE_TURN_OFF_BY_APPLY_FILTER_COUNT:Ljava/lang/String; = "pref_scene_turn_off_by_apply_filter_count"

.field private static final KEY_SCENE_TURN_OFF_SUPPORT_STAR_BURST_BY_APPLY_FILTER_COUNT:Ljava/lang/String; = "pref_scene_turn_off_support_star_burst_by_apply_filter_count"

.field private static final KEY_SELFIE_ANGLE_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_selfie_angle_guide_not_used_count"

.field private static final KEY_SELFIE_CAPTURE_TIPS_CAPTURE_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_selfie_capture_not_used_count"

.field private static final KEY_SELFIE_CAPTURE_TIPS_CAPTURE_VIDEO_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_selfie_capture_video_not_used_count"

.field private static final KEY_SELFIE_TONE_V2_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_selfie_tone_v2_guide_not_used_count"

.field private static final KEY_SELFIE_TONE_V3_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_selfie_tone_v3_guide_not_used_count"

.field private static final KEY_VIDEO_FOCUS_ENHANCER_FIRST_USE_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_video_focus_enhancer_first_use_guide_not_used_count"

.field private static final KEY_VIDEO_FOCUS_ENHANCER_TIPS_NOT_USED_COUNT:Ljava/lang/String; = "pref_smart_tips_video_focus_enhancer_guide_not_used_count"

.field private static final KEY_ZOOM_LOCK_TIPS_COUNT:Ljava/lang/String; = "pref_zoom_lock_smart_tips_display_count"

.field private static final KEY_ZOOM_ROCKER_TIPS_ENABLED:Ljava/lang/String; = "pref_smart_tips_zoom_rocker_enabled"

.field private static final ZOOM_LOCK_TIPS_MAX_DISPLAY_COUNT:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPropertyMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;",
            "Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PopupConditionManager"

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->TAG:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->makePropertyMap()Ljava/util/EnumMap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$15(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$21(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$4(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$11(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$1(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$26(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$5(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$24(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$14(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$9(I)Z

    move-result p0

    return p0
.end method

.method private isContainTipsCountRange(II)Z
    .locals 0

    if-gt p1, p2, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDirtyLensPopupEnabled()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    const-string v0, "pref_camera_lens_dirty_popup_timer"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isEqualBeforeIncreasePopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->setPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)V

    :cond_1
    return p2
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$3(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$16(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$13(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$0(I)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$1(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isEqualBeforeIncreasePopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$10(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$11(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$12(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$13(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$14(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$15(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$16(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isDirtyLensPopupEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$17(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$18(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$makePropertyMap$19(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$2(I)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$20(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$21(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$22(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$23(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$24(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$25(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$26(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$27(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$3(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isEqualBeforeIncreasePopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$4(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$5(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$6(I)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$7(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$8(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makePropertyMap$9(I)Z
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->isContainTipsCountRange(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$27(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method private makePropertyMap()Ljava/util/EnumMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;",
            "Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pref_smart_tips_selfie_capture_video_not_used_count"

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance v3, Lcom/sec/android/app/camera/layer/popup/t;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/popup/t;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 4
    new-instance v3, Lcom/sec/android/app/camera/layer/popup/l;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/popup/l;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 5
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_CAPTURE_TIPS_CAPTURE_VIDEO:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v3, "pref_smart_tips_selfie_capture_not_used_count"

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance v3, Lcom/sec/android/app/camera/layer/popup/q;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/popup/q;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 8
    new-instance v3, Lcom/sec/android/app/camera/layer/popup/y;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/popup/y;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 9
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_CAPTURE_TIPS_CAPTURE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "pref_smart_tips_selfie_tone_v2_guide_not_used_count"

    invoke-direct {v1, v4, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/a;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/a;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 12
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V2_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_selfie_tone_v3_guide_not_used_count"

    invoke-direct {v1, v4, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/v;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/v;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 15
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V3_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_recording_360_bt_mic_tips_not_used_count"

    invoke-direct {v1, v4, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/s;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/s;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 18
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/i;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/i;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 19
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->RECORDING_360_BT_MIC_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_selfie_angle_guide_not_used_count"

    invoke-direct {v1, v4, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/b;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/b;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 22
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_ANGLE_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_focus_enhancer_guide_not_used_count"

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/o;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/o;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 25
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/g;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/g;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 26
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOCUS_ENHANCER_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_video_focus_enhancer_first_use_guide_not_used_count"

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/n;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/n;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 29
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/d;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/d;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 30
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->VIDEO_FOCUS_ENHANCER_FIRST_USE_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v4, "pref_smart_tips_video_focus_enhancer_guide_not_used_count"

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/p;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/p;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 33
    new-instance v4, Lcom/sec/android/app/camera/layer/popup/x;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/layer/popup/x;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 34
    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->VIDEO_FOCUS_ENHANCER_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "pref_smart_tips_zoom_rocker_enabled"

    invoke-direct {v1, v5, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_ROCKER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_smart_tips_burst_shot_guide_on_quick_take_not_used_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/k;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/k;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 39
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->BURST_SHOT_GUIDE_ON_QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    invoke-direct {v1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>()V

    .line 41
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/z;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/z;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 42
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DIRTY_LENS_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "pref_help_second_page"

    invoke-direct {v1, v6, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->MORE_EDIT_HELP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_zoom_lock_smart_tips_display_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/h;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/h;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 47
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_LOCK_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_smart_tips_fun_mode_network_popup"

    invoke-direct {v1, v5, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FUN_MODE_NETWORK_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_smart_tips_fun_mode_user_consent_popup"

    invoke-direct {v1, v5, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/b0;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/b0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 52
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FUN_MODE_USER_CONSENT_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_back_night_mode_suggestion_tips_not_used_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/r;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/r;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 55
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/j;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/j;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 56
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->BACK_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_front_night_mode_suggestion_tips_not_used_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/m;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/m;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setSaveChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;)V

    .line 59
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/f;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/f;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 60
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FRONT_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_scene_turn_off_by_apply_filter_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/e;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/e;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 63
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_TURN_OFF_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_scene_only_turn_off_by_apply_filter_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/w;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/w;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 66
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_ONLY_TURN_OFF_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_scene_turn_off_support_star_burst_by_apply_filter_count"

    invoke-direct {v1, v5, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    new-instance v5, Lcom/sec/android/app/camera/layer/popup/c;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/layer/popup/c;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 69
    sget-object v5, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SCENE_TURN_OFF_SUPPORT_STAR_BURST_BY_APPLY_FILTER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v5, "pref_adding_filters_button_tips_count"

    invoke-direct {v1, v5, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    new-instance v3, Lcom/sec/android/app/camera/layer/popup/u;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/layer/popup/u;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 72
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ADDING_FILTERS_BUTTON_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v3, "pref_edit_filters_download_tips_count"

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->EDIT_FILTERS_DOWNLOAD_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v3, "pref_edit_filters_create_tips_count"

    invoke-direct {v1, v3, v4}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->EDIT_FILTERS_CREATE_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const-string v3, "pref_key_focus_guide_count"

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    new-instance v2, Lcom/sec/android/app/camera/layer/popup/a0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/popup/a0;-><init>(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setEnabledChecker(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;)V

    .line 79
    sget-object p0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FOCUS_GUIDE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$2(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$18(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$19(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$8(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$25(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$12(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$23(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$6(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$22(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$10(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$17(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$7(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->lambda$makePropertyMap$20(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPopupCount ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PopupConditionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->isAllowToShowAgain()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getEnabledChecker()Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getEnabledChecker()Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$EnabledChecker;->isEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr v1, p0

    :cond_3
    :goto_0
    return v1
.end method

.method setAllowToShowAgain(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->setAllowToShowAgain(Z)V

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAllowToShowAgain id ("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupConditionManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method setPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getSaveChecker()Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$SaveChecker;->isSave(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mPropertyMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    const-string v2, ") : "

    const-string/jumbo v3, "setPopupEnabled id ("

    const-string v4, "PopupConditionManager"

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->setPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)V

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->setPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceDefaultValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    xor-int/lit8 v5, p2, 0x1

    goto :goto_0

    :cond_2
    move v5, p2

    .line 9
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v5, :cond_3

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupConditionManager$PropertySet;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    return-void
.end method
