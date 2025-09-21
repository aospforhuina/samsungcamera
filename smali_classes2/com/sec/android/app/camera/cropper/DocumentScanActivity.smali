.class public Lcom/sec/android/app/camera/cropper/DocumentScanActivity;
.super Lcom/sec/android/app/camera/cropper/CropActivity;
.source "DocumentScanActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DocumentScanActivity"


# instance fields
.field protected mCancelButton:Landroid/widget/Button;

.field private final mDocumentExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

.field private final mDocumentScanEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

.field protected mExtractButton:Landroid/widget/ImageButton;

.field protected mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mExtractedTextSelectGuide:Landroid/widget/TextView;

.field private mIsOrientationChanged:Z

.field protected mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field protected mSaveButton:Landroid/widget/Button;

.field protected mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

.field protected mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mIsOrientationChanged:Z

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$1;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mDocumentExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity$2;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mDocumentScanEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->startBixbyVisionActivity(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->lambda$makeCancelButton$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->lambda$makeSaveButton$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->setModeSwitch(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->lambda$makeExtractButton$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$makeCancelButton$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->setViewClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->cancel()V

    return-void
.end method

.method private synthetic lambda$makeExtractButton$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->extractText()V

    return-void
.end method

.method private synthetic lambda$makeSaveButton$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->setViewClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->save()V

    return-void
.end method

.method private makeCancelButton()V
    .locals 2

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mCancelButton:Landroid/widget/Button;

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/cropper/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/b;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeExtractButton()V
    .locals 2

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_extract_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/cropper/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/d;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeSaveButton(Z)V
    .locals 1

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_save:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v0, Lcom/sec/android/app/camera/cropper/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/c;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private makeScanModeIndicator(ZZ)V
    .locals 1

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->select_time_indicator:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/util/FeatureUtils;->isVisionTextSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->initialize(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setExtractModeNewBadgeActivated(Z)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    new-instance p2, Lcom/sec/android/app/camera/cropper/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/cropper/e;-><init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setSelectButtonEventListener(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private makeVisionTextView(Z)V
    .locals 1

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->vision_text_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/util/FeatureUtils;->isVisionTextSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->init()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/FeatureUtils;->isBixbyVisionSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->makeExtractButton()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setModeSwitch(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    check-cast v0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->updateViewState(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_save_preference_for_status_mode"

    invoke-static {v0, v2, p1}, Lcom/sec/android/app/camera/cropper/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v2, "pref_extract_mode_new_badge"

    invoke-static {p1, v2, v0}, Lcom/sec/android/app/camera/cropper/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2, v1}, Lcom/sec/android/app/camera/cropper/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mScanModeIndicator:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->setExtractModeNewBadgeActivated(Z)V

    :cond_1
    return-void
.end method

.method private startBixbyVisionActivity(Ljava/io/File;)V
    .locals 4

    const-string v0, "DocumentScanActivity"

    const-string/jumbo v1, "startBixbyVisionActivity"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".FileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.visionintelligence"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "samsung.intentfilter.visionintelligence.image"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "MIME_TYPE"

    const-string v3, "image/jpeg"

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "IMAGE_URI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "LAUNCH_MODE"

    const/16 v1, 0x12

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "START_MODE"

    const/4 v1, 0x4

    .line 11
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3e8

    .line 12
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startProgressAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    return-void
.end method

.method private stopProgressAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    return-void
.end method

.method private updateGuideLinePercent(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/sec/android/app/camera/cropper/R$dimen;->navigation_bar_height_in_android_fw:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float p0, v0, p0

    mul-float/2addr v0, p1

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    check-cast v0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->dispatchTouchEvent()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method hideLoadingAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->stopProgressAnimation()V

    return-void
.end method

.method initCurrentCropModeLayout(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DocumentScanActivity"

    const-string v1, "initCurrentCropModeLayout"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cameraPreviewRect"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mPreviewRect:Landroid/graphics/Rect;

    const-string/jumbo v0, "topGuideLinePercent"

    const v1, 0x3e0f5c29    # 0.14f

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mTopGuideLinePercent:F

    const v1, 0x3f3d70a4    # 0.74f

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mBottomGuideLinePercent:F

    const-string v1, "quickSettingGuideLinePercent"

    const v2, 0x3dd91687    # 0.106f

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mQuickSettingGuideLinePercent:F

    const-string/jumbo v2, "supportScanAnimation"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->isSupportSmartScanAnimation:Z

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "bottomGuideLinePercent"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->top_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mTopGuideLinePercent:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->updateGuideLinePercent(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 11
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->bottom_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mBottomGuideLinePercent:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->updateGuideLinePercent(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 12
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->quick_setting_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mQuickSettingGuideLinePercent:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->updateGuideLinePercent(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mIsOrientationChanged:Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$layout;->document_scan:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mDocumentScanEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mDocumentExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mExtractTextEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$ExtractTextEventListener;

    const-string v0, "701"

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/cropper/CropActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/cropper/controller/CropController;->getMode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->loading_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->extracted_text_select_guide:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    .line 9
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->loading_view_extract_text:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractTextLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "pref_save_preference_for_status_mode"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/camera/cropper/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "pref_extract_mode_new_badge"

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/cropper/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->makeCancelButton()V

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->makeSaveButton(Z)V

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->makeScanModeIndicator(ZZ)V

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->makeVisionTextView(Z)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    check-cast v0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->setVisionTextView(Lcom/sec/android/app/camera/cropper/view/VisionTextView;)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    check-cast v0, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mExtractedTextSelectGuide:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->setExtractedTextSelectGuide(Landroid/widget/TextView;)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropImageView:Lcom/sec/android/app/camera/cropper/view/CropImageView;

    check-cast p0, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/view/DocumentScanImageView;->setCropVisibility(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "DocumentScanActivity"

    const-string p1, "onCreate : crop mode is not set. ignore."

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/util/FeatureUtils;->isVisionTextSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mVisionTextView:Lcom/sec/android/app/camera/cropper/view/VisionTextView;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/view/VisionTextView;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/CropActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mIsOrientationChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->deInitialize()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;->onResume()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->initialize()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method

.method setViewClickable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method showLoadingAnimation()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/app/camera/cropper/R$color;->crop_save_loading_view_dot1:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/sec/android/app/camera/cropper/R$color;->crop_save_loading_view_dot2:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 4
    new-instance v2, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC:Landroid/graphics/BlendMode;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v4, "dot1"

    const-string v5, "**"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lm/e;-><init>([Ljava/lang/String;)V

    sget-object v4, Lh/u;->a:Ljava/lang/Integer;

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v6, "dot2"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lm/e;-><init>([Ljava/lang/String;)V

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lm/e;

    const-string v6, "dot3"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lm/e;-><init>([Ljava/lang/String;)V

    new-instance v6, Lu/c;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v0}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lm/e;

    const-string v3, "dot4"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lm/e;-><init>([Ljava/lang/String;)V

    sget-object v3, Lh/u;->K:Landroid/graphics/ColorFilter;

    new-instance v4, Lu/c;

    invoke-direct {v4, v2}, Lu/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->h(Lm/e;Ljava/lang/Object;Lu/c;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->startProgressAnimation()V

    :cond_0
    return-void
.end method
