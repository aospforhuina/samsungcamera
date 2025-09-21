.class abstract Lcom/sec/android/app/camera/cropper/CropActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CropActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropActivity"


# instance fields
.field protected isSupportSmartScanAnimation:Z

.field protected mBottomGuideLinePercent:F

.field protected mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

.field protected mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

.field protected mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

.field protected mCropImageViewLayout:Landroid/widget/LinearLayout;

.field protected mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

.field private mGlobalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSecureCamera:Z

.field protected mPreviewRect:Landroid/graphics/Rect;

.field protected mQuickSettingGuideLinePercent:F

.field protected mTopGuideLinePercent:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/cropper/CropActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/CropActivity$1;-><init>(Lcom/sec/android/app/camera/cropper/CropActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mGlobalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/cropper/CropActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/CropActivity;->lambda$initCropLayout$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getRelativeLeft(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeLeft(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getRelativeTop(Landroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeTop(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private handleShowWhenLockedState(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "isSecure"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mIsSecureCamera:Z

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mIsSecureCamera:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e7

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mGlobalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mIsSecureCamera:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method private initCropController(Landroid/content/Intent;I)V
    .locals 8

    const-string v0, "CropActivity"

    const-string v1, "initCropController"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iget-object v6, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    iget-object v7, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    move-object v1, v0

    move v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;-><init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not supported crop mode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    new-instance v6, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iget-object v5, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    move-object v0, v6

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/cropper/controller/MyFilterController;-><init>(ILandroid/content/Context;Landroid/widget/LinearLayout;Lcom/sec/android/app/camera/cropper/view/CropImageView;Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/controller/CropController;->start(Landroid/content/Intent;)V

    return-void
.end method

.method private initCropImageInfo(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "imagePath"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string/jumbo v0, "targetScaleRatio"

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v4

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "nonDestruction"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string/jumbo v0, "uri"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/net/Uri;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "heifEnabled"

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "cropViewUseThumbnail"

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "proRawOnlyPictureFormat"

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setOriginalImageInfo(Landroid/content/Context;Ljava/lang/String;FLandroid/net/Uri;ZZZZ)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageInfo()Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "CropActivity"

    const-string v0, "initCropImageInfo : original image information is null, finish."

    .line 17
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private initCropLayout()V
    .locals 2

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->crop_image_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    .line 2
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->crop_image_view_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageViewLayout:Landroid/widget/LinearLayout;

    .line 3
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->crop_root_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/cropper/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/a;-><init>(Lcom/sec/android/app/camera/cropper/CropActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$initCropLayout$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeLeft(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeTop(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeLeft(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/cropper/CropActivity;->getRelativeTop(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_0
    return v1
.end method


# virtual methods
.method abstract initCurrentCropModeLayout(Landroid/content/Intent;)V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/CropActivity;->setViewClickable(Z)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "CropActivity"

    const-string v1, "onCreate"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "savedIntent"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    const-string p1, "cropMode"

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 6
    invoke-virtual {v1, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    if-ne v3, v2, :cond_1

    const-string p1, "initCropModeManager : invalid cropper access. finish."

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;->initCropLayout()V

    .line 11
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/cropper/CropActivity;->initCurrentCropModeLayout(Landroid/content/Intent;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/CropActivity;->initCropImageInfo(Landroid/content/Intent;)V

    .line 13
    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/camera/cropper/CropActivity;->initCropController(Landroid/content/Intent;I)V

    .line 14
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/cropper/CropActivity;->handleShowWhenLockedState(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mGlobalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy BroadcastReceiver isn\'t registered : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CropActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->cancel()V

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CropActivity"

    const-string v1, "onResume : crop does not support on multi window environments."

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/controller/CropController;->getMode()I

    move-result v1

    const-string v2, "cropMode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImagePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalMinCropSize()I

    move-result v1

    const-string v2, "minCropSize"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-boolean v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mIsSecureCamera:Z

    const-string v2, "isSecure"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    iget v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mTopGuideLinePercent:F

    const-string/jumbo v2, "topGuideLinePercent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 9
    iget v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mBottomGuideLinePercent:F

    const-string v2, "bottomGuideLinePercent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 10
    iget v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mQuickSettingGuideLinePercent:F

    const-string v2, "quickSettingGuideLinePercent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isHeif()Z

    move-result v1

    const-string v2, "heifEnabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/controller/CropController;->getMode()I

    move-result v1

    const-string v2, "cropCoordinate"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    goto/16 :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isNonDestruction()Z

    move-result v1

    const-string v3, "nonDestruction"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "uri"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mPreviewRect:Landroid/graphics/Rect;

    const-string v3, "cameraPreviewRect"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getPolygonPointList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string v2, "resizedImageWidth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getResizedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-string v2, "resizedImageHeight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "convertCoordinateRequired"

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalTargetRatio()F

    move-result v1

    const-string/jumbo v3, "targetScaleRatio"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 21
    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->isSupportSmartScanAnimation:Z

    const-string/jumbo v1, "supportScanAnimation"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "objectRemovalEnabled"

    .line 22
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getOriginalCropRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isUseThumbnail()Z

    move-result v1

    const-string v2, "cropViewUseThumbnail"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isProRawOnlyPictureFormat()Z

    move-result p0

    const-string v1, "proRawOnlyPictureFormat"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string p0, "savedIntent"

    .line 26
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method abstract setViewClickable(Z)V
.end method
