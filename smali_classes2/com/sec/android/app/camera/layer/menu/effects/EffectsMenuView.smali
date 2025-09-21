.class public Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "EffectsMenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$View;
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$View;",
        "Lcom/google/android/material/tabs/TabLayout$d;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectsMenuView"


# instance fields
.field private mCurrentTab:I

.field private final mEffectViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field final mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIsPreviewLongPressed:Z

.field private mIsPreviewSwiped:Z

.field private mIsTouchInRestrictedArea:Z

.field private mOrientation:I

.field private mViewBinding:Lo5/g2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsTouchInRestrictedArea:Z

    .line 5
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewSwiped:Z

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mOrientation:I

    .line 7
    new-instance p1, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    return-object p0
.end method

.method private applyTabletConstraints(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->r:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget-object v2, Lu3/g;->d:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto/16 :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 21
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->q:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelinePercent(IF)V

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 25
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 26
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 27
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p0, p0, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private changeTabView(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/q;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/q;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_key_effects_filter_integration_tab_badge_enabled"

    invoke-static {v2, v3, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p1, v1, v1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->showDotBadge(Lcom/google/android/material/tabs/TabLayout;IZ)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "pref_key_effects_color_tone_tab_badge_enabled"

    invoke-static {p1, v3, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p1, v2, v1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->showDotBadge(Lcom/google/android/material/tabs/TabLayout;IZ)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3, v1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getNewTab(II)Lcom/google/android/material/tabs/TabLayout$g;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->S()Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$g;->y(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$g;->x(Ljava/lang/Object;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/layer/menu/effects/v;->a:Lcom/sec/android/app/camera/layer/menu/effects/v;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07013e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p1

    const/high16 p2, 0x40400000    # 3.0f

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f07013d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    iget-object p0, v0, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    const/high16 p1, -0x3d4c0000    # -90.0f

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    :cond_0
    return-object v0
.end method

.method private getTabPosition(I)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$refreshTab$1(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$changeTabView$3(Landroid/view/View;)V

    return-void
.end method

.method private initEffectTab(IILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    move-object v1, p3

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->createTabPresenter(ILcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->initialize()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p3, p3, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->getNewTab(II)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/material/tabs/TabLayout;->u(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_1
    return-void
.end method

.method private initEffectTabSize()V
    .locals 9

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f07013e

    const v3, 0x7f07013c

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f07005c

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/2addr v0, v5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v0, v6

    .line 3
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v6, v6, Lo5/g2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070861

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v0, v7

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v2, v2, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/t;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    sub-int/2addr v0, v4

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v2, v2, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_3

    .line 14
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v2, v2, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 15
    :cond_2
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v5, v0

    int-to-float v0, v5

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    move v0, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f07013f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 19
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v5, v5, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 20
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v5, v5, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v5, v1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_7

    .line 21
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v6, v6, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v6

    if-ne v6, v4, :cond_6

    move v6, v0

    :goto_5
    move v7, v6

    goto :goto_6

    :cond_6
    if-nez v1, :cond_7

    move v6, v0

    move v7, v3

    goto :goto_6

    .line 22
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v6, v6, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v1, v6, :cond_8

    move v7, v0

    move v6, v3

    goto :goto_6

    :cond_8
    move v6, v3

    goto :goto_5

    .line 23
    :goto_6
    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v8, Lcom/sec/android/app/camera/layer/menu/effects/p;

    invoke-direct {v8, v2, v6, v7}, Lcom/sec/android/app/camera/layer/menu/effects/p;-><init>(III)V

    invoke-virtual {v5, v8}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p0, v1}, Lo5/g2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    .line 3
    sget-object v0, Lu3/b;->z2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->d:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 10
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static synthetic j(Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$getNewTab$4(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$initEffectTabSize$5(Lcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;IZLcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$setEffectTabDim$2(IZLcom/google/android/material/tabs/TabLayout$g;)V

    return-void
.end method

.method private synthetic lambda$changeTabView$3(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v2, 0x4

    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getNewTab$4(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-void
.end method

.method private synthetic lambda$initEffectTabSize$5(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method

.method private static synthetic lambda$initEffectTabSize$6(IIILandroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float p0, p0

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 2
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr p1, p0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    add-int/2addr p2, p0

    .line 4
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$refreshTab$0(Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshTab$1(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06001e

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06001f

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setEffectTabDim$2(IZLcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcom/google/android/material/tabs/TabLayout$g;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 2
    iget-object p1, p3, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3
    iget-object p1, p3, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-nez p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p0, p0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout;->Z(Lcom/google/android/material/tabs/TabLayout$g;)V

    :cond_1
    return-void
.end method

.method public static synthetic m(IIILandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$initEffectTabSize$6(IIILandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->lambda$refreshTab$0(Landroid/widget/TextView;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewSwiped:Z

    return p0
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsTouchInRestrictedArea:Z

    return p0
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)Lo5/g2;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewSwiped:Z

    return-void
.end method

.method private showDotBadge(Lcom/google/android/material/tabs/TabLayout;IZ)V
    .locals 1

    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_1
    if-ltz p0, :cond_2

    .line 4
    invoke-virtual {p1, p0, p3}, Lcom/google/android/material/tabs/TabLayout;->d0(IZ)V

    :cond_2
    return-void
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTabSize()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSelectedTabSettingValue()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p0, p0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$g;->k()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public initialize()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    const/4 v1, 0x0

    const v2, 0x7f1201cd

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    const/4 v2, 0x1

    const v3, 0x7f1202aa

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    const/4 v3, 0x2

    const v4, 0x7f1201df

    invoke-direct {p0, v3, v4, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    .line 4
    sget-object v0, Lu3/b;->L3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const v3, 0x7f1200f1

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->g:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV3TabView;

    invoke-direct {p0, v4, v3, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lu3/b;->K3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    invoke-direct {p0, v4, v3, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lu3/b;->J3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->d:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabView;

    invoke-direct {p0, v4, v3, v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->initEffectTab(IILandroid/view/View;)V

    .line 10
    :cond_2
    :goto_0
    sget-object v0, Lu3/b;->z2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v3, v3, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v3, v3, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v3

    .line 13
    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "pref_key_effects_filter_integration_tab_badge_enabled"

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->showDotBadge(Lcom/google/android/material/tabs/TabLayout;IZ)V

    .line 17
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_key_effects_color_tone_tab_badge_enabled"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, v0, v4, v2}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->showDotBadge(Lcom/google/android/material/tabs/TabLayout;IZ)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView$2;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onInitialize()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onPreviewLongPressEnd()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5
    instance-of v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->handleKeyDownEvent()V

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onPreviewLongPressEnd()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mOrientation:I

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->applyTabletConstraints(I)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5
    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;->onOrientationChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onTabSelected(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v3, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v3}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->getCenterButtonArea()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v4, v4, Lo5/g2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    .line 3
    iget v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mOrientation:I

    int-to-float v5, v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v5, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v5}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->getCenterButtonArea()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v5, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v5}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->getCenterButtonArea()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast v6, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {v6}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->getCenterButtonArea()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsTouchInRestrictedArea:Z

    return v2

    .line 6
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsTouchInRestrictedArea:Z

    .line 7
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v3, v3, Lo5/g2;->c:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v3, v3, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    if-nez v0, :cond_5

    return v2

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v3, v3, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    return v2

    .line 9
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    if-nez v0, :cond_7

    return v1

    .line 10
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 11
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    if-eqz v0, :cond_8

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuContract$Presenter;->onPreviewLongPressEnd()V

    .line 13
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewLongPressed:Z

    return v1

    .line 14
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewSwiped:Z

    if-eqz v0, :cond_9

    .line 15
    iput-boolean v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mIsPreviewSwiped:Z

    return v1

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mEffectViewMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 17
    instance-of v2, v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;

    if-eqz v2, :cond_a

    .line 18
    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->handleTouchUpEvent()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 19
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public refreshLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/tabs/TabLayout;->t(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p0, p0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public refreshTab(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->getTabPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->changeTabView(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/s;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object p1, v0, Lcom/google/android/material/tabs/TabLayout$g;->i:Lcom/google/android/material/tabs/TabLayout$i;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->semRequestAccessibilityFocus()Z

    if-eqz p2, :cond_4

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->X(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->o()V

    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p2, p2, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 11
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p2, p2, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p2, p1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/material/tabs/TabLayout$g;->q()Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/r;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/r;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object p1, p1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout;->t(Lcom/google/android/material/tabs/TabLayout$d;)V

    :cond_4
    return-void
.end method

.method public setEffectTabDim(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v1, v1, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/layer/menu/effects/u;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/u;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;IZ)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabInitPosition(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->getTabPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mViewBinding:Lo5/g2;

    iget-object v0, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->Q(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/EffectsMenuView;->mCurrentTab:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$g;->o()V

    :cond_1
    return-void
.end method

.method public startMenuLaunchAnimation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
