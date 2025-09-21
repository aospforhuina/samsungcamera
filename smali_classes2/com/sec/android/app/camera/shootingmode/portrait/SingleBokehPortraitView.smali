.class public Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;
.super Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;
.source "SingleBokehPortraitView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView<",
        "Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/a8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getEndScreenFlashRect()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object v0, v0, Lo5/a8;->v:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/a8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object v1, v1, Lo5/a8;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object v0, v0, Lo5/a8;->v:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    invoke-static {v0, v1}, Lv5/a;->c(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic cancelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->cancelAnimation()V

    return-void
.end method

.method public bridge synthetic endNightShutterAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->endNightShutterAnimation(Z)V

    return-void
.end method

.method protected getBokehEffectList()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    return-object p0
.end method

.method protected getBokehEffectListFrame()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->b:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method protected getBokehEffectTitle()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getBokehLighting()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    return-object p0
.end method

.method protected getEffectButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->g:Landroid/widget/ImageButton;

    return-object p0
.end method

.method protected getEffectSlider()Lcom/sec/android/app/camera/widget/ExpandableSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-object p0
.end method

.method protected getFaceGuideView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->m:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method protected getGuideText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getGuideline(Z)Landroidx/constraintlayout/widget/Guideline;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lo5/a8;->v:Landroidx/constraintlayout/widget/Guideline;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lo5/a8;->d:Landroidx/constraintlayout/widget/Guideline;

    :goto_0
    return-object p0
.end method

.method protected getMainConstraintLayout()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method protected getNightCountDownTimer()Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->f:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    return-object p0
.end method

.method protected getNightGuideText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getNightModeButton()Lcom/sec/android/app/camera/widget/SceneDetectButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->o:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    return-object p0
.end method

.method protected getNightShutter()Lcom/sec/android/app/camera/widget/NightShutter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->q:Lcom/sec/android/app/camera/widget/NightShutter;

    return-object p0
.end method

.method protected getNightShutterArea()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->t:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method protected getSelectBackground()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->r:Landroid/widget/ImageView;

    return-object p0
.end method

.method public bridge synthetic hideBokehEffectViews(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideBokehEffectViews(Z)V

    return-void
.end method

.method public bridge synthetic hideBokehLightingSlider()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideBokehLightingSlider()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hideFaceGuide()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideFaceGuide()V

    return-void
.end method

.method public bridge synthetic hideGuideText()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideGuideText()V

    return-void
.end method

.method public bridge synthetic hideNightModeButton(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->hideNightModeButton(Z)V

    return-void
.end method

.method public hideNightScreenFlash(ZFI)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p0, p0, Lo5/a8;->p:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->e(ZF)V

    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->getEffectButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->initialize()V

    return-void
.end method

.method public bridge synthetic isBokehEffectListAnimationRunning()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectListAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isBokehEffectListVisible()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectListVisible()Z

    move-result p0

    return p0
.end method

.method protected isBokehEffectSupported()Z
    .locals 0

    sget-object p0, Lu3/b;->P3:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    return p0
.end method

.method protected isLightingSupported()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->isBokehEffectSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lu3/b;->E0:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lu3/b;->F0:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic refreshBokehSliderTablet(III)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->refreshBokehSliderTablet(III)V

    return-void
.end method

.method public bridge synthetic setBokehEffectSliderLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehEffectSliderLevel(I)V

    return-void
.end method

.method public bridge synthetic setBokehLightingVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehLightingVisibility(Z)V

    return-void
.end method

.method public bridge synthetic setBokehListAdapter(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setBokehListAdapter(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic setCurrentBokehEffect(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setCurrentBokehEffect(I)V

    return-void
.end method

.method public bridge synthetic setEstimatedCaptureDurationTime(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setEstimatedCaptureDurationTime(I)V

    return-void
.end method

.method public bridge synthetic setInitialBokehEffect(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setInitialBokehEffect(I)V

    return-void
.end method

.method public bridge synthetic setLightingLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setLightingLevel(I)V

    return-void
.end method

.method public bridge synthetic setNightGuideVisibility(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setNightGuideVisibility(Z)V

    return-void
.end method

.method public bridge synthetic setNightModeSelected(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setNightModeSelected(Z)V

    return-void
.end method

.method public bridge synthetic setPreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->setPreviewRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic showCountDownTimer(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showCountDownTimer(IZ)V

    return-void
.end method

.method public bridge synthetic showEffectButton()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showEffectButton()V

    return-void
.end method

.method public bridge synthetic showEffectSlider(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showEffectSlider(Z)V

    return-void
.end method

.method public bridge synthetic showFaceGuide()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showFaceGuide()V

    return-void
.end method

.method public bridge synthetic showGuideText()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showGuideText()V

    return-void
.end method

.method public bridge synthetic showNightModeButton(ZIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showNightModeButton(ZIZ)V

    return-void
.end method

.method public showNightScreenFlash(FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object p2, p2, Lo5/a8;->p:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p0

    const v0, 0x7f0602d1

    invoke-virtual {p2, p0, v0, p1}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->k(Landroid/graphics/Rect;IF)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->mViewBinding:Lo5/a8;

    iget-object v0, v0, Lo5/a8;->p:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/SingleBokehPortraitView;->getEndScreenFlashRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->j(Landroid/graphics/Rect;FF)V

    :goto_0
    return-void
.end method

.method public bridge synthetic showNightShutter()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->showNightShutter()V

    return-void
.end method

.method public bridge synthetic startFaceDetectGuideAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startFaceDetectGuideAnimation(Z)V

    return-void
.end method

.method public bridge synthetic startNightModeButtonClickAnimation(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startNightModeButtonClickAnimation(Z)V

    return-void
.end method

.method public bridge synthetic startNightShutterAnimation(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->startNightShutterAnimation(I)V

    return-void
.end method

.method public bridge synthetic updateChildBackground(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateChildBackground(I)V

    return-void
.end method

.method public bridge synthetic updateEffectButtonResource(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateEffectButtonResource(IZ)V

    return-void
.end method

.method public bridge synthetic updateGuideText(Ljava/lang/String;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateGuideText(Ljava/lang/String;Z)V

    return-void
.end method

.method protected updateOrientation()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateOrientation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/PortraitLayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->UPDATE_ORIENTATION:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v2, v0, v1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic updateViewBackground(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->updateViewBackground(Landroid/graphics/Rect;)V

    return-void
.end method
