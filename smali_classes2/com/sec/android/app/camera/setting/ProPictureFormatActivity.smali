.class public Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ProPictureFormatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$RoundedDecoration;,
        Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;,
        Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListDivider;,
        Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProPictureFormatActivity"


# instance fields
.field private JUST_IN_TIME_TIPS_OFFSET:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEntries:[Ljava/lang/String;

.field private mEntryValues:[Ljava/lang/String;

.field private mIsDarkMode:Z

.field private final mItemClickListener:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;

.field private mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mIsDarkMode:Z

    const-wide/32 v0, 0x5265c00

    .line 3
    iput-wide v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->JUST_IN_TIME_TIPS_OFFSET:J

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$1;-><init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$2;-><init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;-><init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mItemClickListener:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;

    return-void
.end method

.method public static synthetic e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->lambda$onDestroy$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method private findIndexOfValue(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntryValues:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mItemClickListener:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;

    return-object p0
.end method

.method private initScreen()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntries:[Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntryValues:[Ljava/lang/String;

    const v0, 0x7f0a010e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v1, 0x7f0a04d9

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f120141

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mEntries:[Ljava/lang/String;

    const v3, 0x7f0d00b3

    invoke-direct {v0, p0, p0, v3, v2}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;-><init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 11
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {p0, v2, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->findIndexOfValue(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;->setSelectedIndex(I)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v0

    const v2, 0x7f07077f

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListDivider;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v7, v2

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListDivider;-><init>(Landroid/content/Context;IIILcom/sec/android/app/camera/setting/o2;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListDivider;

    const/4 v11, 0x1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListDivider;-><init>(Landroid/content/Context;IIILcom/sec/android/app/camera/setting/o2;)V

    .line 17
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f0403c9

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    new-instance v3, Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-direct {v3, p0}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    .line 20
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    const/4 v5, 0x0

    const/16 v6, 0xf

    if-lez v4, :cond_1

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v2, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v3, v6, v2}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    invoke-virtual {v2, v6}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    const v2, 0x7f0a0170

    .line 23
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 25
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 26
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 27
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$RoundedDecoration;

    invoke-direct {v1, p0, v5}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$RoundedDecoration;-><init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;Lcom/sec/android/app/camera/setting/p2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const-string p0, "512"

    .line 31
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void
.end method

.method private isJustInTimeTipsEnabled()Z
    .locals 4

    const-string v0, "pref_expert_raw_just_in_time_tips_timer"

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    iget-wide v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->JUST_IN_TIME_TIPS_OFFSET:J

    cmp-long p0, v2, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mListAdapter:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Landroidx/appcompat/util/SeslRoundedCorner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mSeslListRoundedCorner:Landroidx/appcompat/util/SeslRoundedCorner;

    return-object p0
.end method

.method private static synthetic lambda$onDestroy$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private showJustInTimeTips()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->isJustInTimeTipsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "pref_expert_raw_just_in_time_tips_count"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showJustInTimeTips count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProPictureFormatActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "pref_expert_raw_just_in_time_tips_timer"

    invoke-static {p0, v4, v2, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-static {p0, v1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.tips"

    const-string v2, "com.samsung.android.app.tips.TipsIntentService"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x8

    const-string/jumbo v2, "tips_extras"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "tips_extras2"

    const-string v2, "CAMX_0019"

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 5
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mIsDarkMode:Z

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eq v0, p1, :cond_1

    const-string p1, "ProPictureFormatActivity"

    const-string v0, "onConfigurationChanged: activity will be recreated because DarkMode is changed."

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ProPictureFormatActivity"

    const-string v0, "onCreate"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera-parcel"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "onCreate finish, Bundle is null."

    .line 7
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string/jumbo v1, "setting"

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v0, :cond_2

    const-string v0, "onCreate finish, CameraSettings is null."

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e7

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 19
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "camera.action.CAMERA_START"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const p1, 0x7f0d0097

    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->initScreen()V

    const-string p1, "com.samsung.android.app.galaxyraw"

    .line 24
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AppsStubUtil;->isDownloadable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->showJustInTimeTips()V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "ProPictureFormatActivity"

    const-string v1, "onDestroy"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/setting/n2;->a:Lcom/sec/android/app/camera/setting/n2;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy BroadcastReceiver isn\'t registered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDarkMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->mIsDarkMode:Z

    return-void
.end method
