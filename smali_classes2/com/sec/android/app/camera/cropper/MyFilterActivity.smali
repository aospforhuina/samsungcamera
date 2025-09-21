.class public Lcom/sec/android/app/camera/cropper/MyFilterActivity;
.super Lcom/sec/android/app/camera/cropper/CropActivity;
.source "MyFilterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyFilterActivity"


# instance fields
.field private final mMyFilterEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/cropper/MyFilterActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/cropper/MyFilterActivity$1;-><init>(Lcom/sec/android/app/camera/cropper/MyFilterActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->mMyFilterEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/cropper/MyFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->lambda$initCurrentCropModeLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/cropper/MyFilterActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->lambda$initCurrentCropModeLayout$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initCurrentCropModeLayout$0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->setViewClickable(Z)V

    const-string p1, "3030"

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->cancel()V

    return-void
.end method

.method private synthetic lambda$initCurrentCropModeLayout$1(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->setViewClickable(Z)V

    const-string p1, "3031"

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->save()V

    return-void
.end method


# virtual methods
.method initCurrentCropModeLayout(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "MyFilterActivity"

    const-string v1, "initChildCropLayout"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/cropper/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/f;-><init>(Lcom/sec/android/app/camera/cropper/MyFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/cropper/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/cropper/g;-><init>(Lcom/sec/android/app/camera/cropper/MyFilterActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "topGuideLinePercent"

    const v1, 0x3e0f5c29    # 0.14f

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mTopGuideLinePercent:F

    const-string v1, "bottomGuideLinePercent"

    const v2, 0x3f3d70a4    # 0.74f

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mBottomGuideLinePercent:F

    const-string v2, "quickSettingGuideLinePercent"

    const v3, 0x3dd91687    # 0.106f

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mQuickSettingGuideLinePercent:F

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 10
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->top_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mTopGuideLinePercent:F

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 11
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->bottom_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mBottomGuideLinePercent:F

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 12
    sget p1, Lcom/sec/android/app/camera/cropper/R$id;->quick_setting_guideline:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    iget p0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mQuickSettingGuideLinePercent:F

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 2
    sget v0, Lcom/sec/android/app/camera/cropper/R$layout;->my_filter:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/MyFilterActivity;->mMyFilterEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropEventListener:Lcom/sec/android/app/camera/cropper/controller/CropController$CropEventListener;

    const-string v0, "314"

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/cropper/CropActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/CropActivity;->mCropController:Lcom/sec/android/app/camera/cropper/controller/CropController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/controller/CropController;->deInitialize()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/cropper/CropActivity;->onDestroy()V

    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/cropper/CropActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_0

    const-string p1, "MyFilterActivity"

    const-string v0, "onMultiWindowModeChanged : crop does not support on multi window environments."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x64

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method setViewClickable(Z)V
    .locals 1

    .line 1
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    sget v0, Lcom/sec/android/app/camera/cropper/R$id;->btn_done:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
