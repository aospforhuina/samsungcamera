.class public Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;
.super Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;
.source "ResizableKeyScreenView.java"


# static fields
.field private static final MULTI_WINDOW_MINIMUM_RESIZABLE_RATIO:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "ResizableKeyScreenView"


# instance fields
.field private mResizableViewBinding:Lo5/a1;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    return-void
.end method

.method private calculateScaleFactor(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    :goto_0
    return-void
.end method

.method private initializeQuickSetting()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->setResizableMode(Z)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;->getQuickSettingPresenter(Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$View;)Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;)V

    .line 6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->initialize()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sget-object p0, Lu3/b;->b:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->updateResizableLayout()V

    :cond_0
    return-void
.end method

.method private initializeShootingModeList()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;->getShootingModeListPresenter(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListContract$View;)Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListContract$Presenter;)V

    .line 7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->initialize()V

    .line 8
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->setCenterBackgroundWidthChangeListener(Lcom/sec/android/app/camera/layer/keyscreen/listener/CenterBackgroundWidthChangeListener;)V

    .line 9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->setResizableMode()V

    .line 10
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDexMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07079c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    :goto_0
    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    const/16 v1, 0x20

    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v2, p0, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initializeZoom()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mPresenter:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;->getZoomPresenter(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomContract$View;)Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;[I[ILandroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->lambda$getViewVisibleRect$2([I[ILandroid/graphics/Rect;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/AbstractMap$SimpleEntry;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->lambda$getViewVisibleRect$0(Ljava/util/AbstractMap$SimpleEntry;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->lambda$getViewVisibleRect$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getViewVisibleRect$0(Ljava/util/AbstractMap$SimpleEntry;)Ljava/util/Optional;
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getViewVisibleRect$1(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getViewVisibleRect$2([I[ILandroid/graphics/Rect;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 2
    invoke-virtual {p4, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 3
    aget v0, p2, p0

    aget p0, p1, p0

    sub-int/2addr v0, p0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x1

    .line 4
    aget p2, p2, p0

    aget p0, p1, p0

    sub-int/2addr p2, p0

    iput p2, p3, Landroid/graphics/Rect;->top:I

    .line 5
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr v0, p0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 6
    iget p0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private relocateShootingModeList()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07079b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    :goto_0
    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private scaleBottomArea()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method private setSideButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 2
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView$2;->$SwitchMap$com$sec$android$app$camera$interfaces$KeyScreenLayerManager$CenterButtonState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705bd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07003d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->calculateScaleFactor(F)V

    .line 7
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    .line 9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getLeftButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getRightButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getCenterButton()Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mScaleFactor:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    mul-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    if-le v0, p1, :cond_4

    sub-int/2addr v0, p1

    .line 10
    div-int/2addr v0, v3

    sub-int/2addr v1, v0

    const/4 p1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 11
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->changeSideButtonMarginToCenter(I)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->scaleBottomArea()V

    return-void
.end method

.method private updateConstrainBottomButtonsForTablet()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->b:Lo5/q;

    iget-object v1, v1, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v2, v2, Lo5/a1;->b:Lo5/q;

    iget-object v2, v2, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    .line 4
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v4, v4, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v4, 0x3

    .line 6
    invoke-virtual {v3, v0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v5, 0x7

    .line 7
    invoke-virtual {v3, v0, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v6, 0x4

    .line 8
    invoke-virtual {v3, v0, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v7, 0x6

    .line 9
    invoke-virtual {v3, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    invoke-virtual {v3, v2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 11
    invoke-virtual {v3, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 12
    invoke-virtual {v3, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 13
    invoke-virtual {v3, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v8, 0x0

    .line 14
    invoke-virtual {v3, v0, v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 15
    invoke-virtual {v3, v0, v6, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 16
    invoke-virtual {v3, v0, v4, v8, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 17
    invoke-virtual {v3, v0, v6, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    invoke-virtual {v3, v0, v5, v1, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 19
    invoke-virtual {v3, v2, v4, v8, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 20
    invoke-virtual {v3, v2, v6, v8, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 21
    invoke-virtual {v3, v2, v7, v1, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private updateTabletResizableLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updatePauseStopAreaParams()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->b:Lo5/q;

    iget-object v1, v1, Lo5/q;->l:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070055

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->b:Lo5/q;

    iget-object v1, v1, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070053

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->b:Lo5/q;

    iget-object v1, v1, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateCenterButtonResizableMode()V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070040

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v1, v1, Lo5/a1;->b:Lo5/q;

    iget-object v1, v1, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->clear()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;->clear()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->clear()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->clear()V

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->clear()V

    return-void
.end method

.method public createView(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$KeyScreenType;)Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$View;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic disableView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->disableView(I)V

    return-void
.end method

.method public bridge synthetic enableView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->enableView(I)V

    return-void
.end method

.method public bridge synthetic endShutterProgressWheel()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->endShutterProgressWheel()V

    return-void
.end method

.method protected getCenterButton()Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    return-object p0
.end method

.method public bridge synthetic getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIndicatorManager()Lcom/sec/android/app/camera/interfaces/IndicatorManager;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->getIndicatorManager()Lcom/sec/android/app/camera/interfaces/IndicatorManager;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView$1;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;)V

    return-object v0
.end method

.method protected getLeftButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    return-object p0
.end method

.method protected getProgressCircle()Lcom/sec/android/app/camera/widget/ProgressCircle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/widget/ProgressCircle;

    return-object p0
.end method

.method protected getProgressCircleBackground()Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public getQuickSettingItemVisibleRect(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->getQuickSettingItemVisibleRect(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getQuickSettingItemVisibleRegion()Landroid/graphics/Region;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->getQuickSettingItemVisibleRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method protected getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    return-object p0
.end method

.method public bridge synthetic getQuickTakeButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->getQuickTakeButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;

    move-result-object p0

    return-object p0
.end method

.method protected getRightButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    return-object p0
.end method

.method protected getShootingModeBackground()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->l:Landroid/widget/ImageView;

    return-object p0
.end method

.method protected getShootingModeListLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    return-object p0
.end method

.method protected getShutterProgressWheel()Lcom/sec/android/app/camera/widget/ShutterProgressWheel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->k:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    return-object p0
.end method

.method protected getShutterSpinningWheelAnimationView()Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->l:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public getViewVisibleRect(I)Landroid/graphics/Rect;
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 2
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mViewArray:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v3, Lcom/sec/android/app/camera/layer/keyscreen/l;->a:Lcom/sec/android/app/camera/layer/keyscreen/l;

    .line 3
    invoke-virtual {p1, v3}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v3, Lcom/sec/android/app/camera/layer/keyscreen/m;->a:Lcom/sec/android/app/camera/layer/keyscreen/m;

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/sec/android/app/camera/layer/keyscreen/k;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/k;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;[I[ILandroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->initializeZoom()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    return-object p0
.end method

.method public hideBurstShotCounter()V
    .locals 0

    return-void
.end method

.method public bridge synthetic hideProgressCircle()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->hideProgressCircle()V

    return-void
.end method

.method public bridge synthetic hideQuickMenuByAlpha()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->hideQuickMenuByAlpha()V

    return-void
.end method

.method public bridge synthetic hideQuickTakePressEffect()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->hideQuickTakePressEffect()V

    return-void
.end method

.method public bridge synthetic hideShootingBackground()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->hideShootingBackground()V

    return-void
.end method

.method public hideShootingModeList()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideSubQuickSetting()V
    .locals 0

    return-void
.end method

.method public hideSubView()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->isExtend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->reduceArea()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hideView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->hideView(I)V

    return-void
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : Start["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResizableKeyScreenView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lo5/a1;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "inflate : End["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->updateTabletResizableLayout()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->updateConstrainBottomButtonsForTablet()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->setSideButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->relocateShootingModeList()V

    return-void
.end method

.method public initialize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->initializeShootingModeList()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->initializeMainButton()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->initializeQuickSetting()V

    return-void
.end method

.method public bridge synthetic initializeChildBackground(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->initializeChildBackground(I)V

    return-void
.end method

.method public bridge synthetic isCaptureAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isCaptureAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCenterButtonEnabled()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isCenterButtonEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isShutterProgressWheelVisible()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isShutterProgressWheelVisible()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isShutterSpinningWheelAnimationRunning()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isShutterSpinningWheelAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSwitchCameraAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isSwitchCameraAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isTranslateListAvailable()Z
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->isTranslateListAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onCenterBackgroundInitialized()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->onCenterBackgroundInitialized()V

    return-void
.end method

.method public bridge synthetic onCenterBackgroundWidthChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->onCenterBackgroundWidthChanged(I)V

    return-void
.end method

.method public onFirstTimeLastViewCentered()V
    .locals 0

    return-void
.end method

.method public onLastViewScrollChanged(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getCenterButtonState()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->setSideButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->relocateShootingModeList()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic performHideView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->performHideView(I)V

    return-void
.end method

.method public bridge synthetic performShowView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->performShowView(I)V

    return-void
.end method

.method protected postInitialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->initializeZoom()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->requestCenterButtonFocus(I)V

    return-void
.end method

.method public bridge synthetic refreshCenterButton(Lcom/sec/android/app/camera/interfaces/CommandId;Landroid/util/Pair;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->refreshCenterButton(Lcom/sec/android/app/camera/interfaces/CommandId;Landroid/util/Pair;)V

    return-void
.end method

.method public refreshQuickSetting(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->refreshQuickSetting(Ljava/util/List;)V

    return-void
.end method

.method public refreshView(Lcom/sec/android/app/camera/interfaces/CommandId;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->refreshView(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p1, p1, Lo5/a1;->b:Lo5/q;

    iget-object p1, p1, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p2, :cond_0

    const p2, 0x7f1205a6

    goto :goto_0

    :cond_0
    const p2, 0x7f1205a7

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isMoreMode(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p1, p1, Lo5/a1;->l:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p2, p2, Lo5/a1;->l:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p2, p2, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p2, p2, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic requestCenterButtonFocus(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->requestCenterButtonFocus(I)V

    return-void
.end method

.method public resetCenterButtonScale()V
    .locals 0

    return-void
.end method

.method public bridge synthetic resetDisableView()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->resetDisableView()V

    return-void
.end method

.method public bridge synthetic saveLatestThumbnail()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->saveLatestThumbnail()V

    return-void
.end method

.method public bridge synthetic setAttachMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setAttachMode(Z)V

    return-void
.end method

.method public bridge synthetic setBurstShotButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setBurstShotButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$BurstShotButtonState;)V

    return-void
.end method

.method public setCapturingCount(I)V
    .locals 0

    return-void
.end method

.method public setCenterButtonAction(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic setCenterButtonEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setCenterButtonEnabled(ZI)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setCenterButtonEnabled(ZI)V

    return-void
.end method

.method public setCenterButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->setSideButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object v0, v0, Lo5/a1;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;->updateButton(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateButton(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method public setEditButtonClickListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShootingModeEditButtonClickListener;)V
    .locals 0

    return-void
.end method

.method protected setInitialButtonsBackground(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p1, p1, Lo5/a1;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08084e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p1, p1, Lo5/a1;->b:Lo5/q;

    iget-object p1, p1, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->setDarkMode(Z)V

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->mAttachMode:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/AbstractSideButtonView;->setDarkMode(Z)V

    :cond_0
    return-void
.end method

.method public setKeyScreenButtonPositionForFunMode(I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

    return-void
.end method

.method public bridge synthetic setQuickTakeButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setQuickTakeButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonState;)V

    return-void
.end method

.method public setQuickTakeButtonTouchPositionUpdateListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$QuickTakeButtonTouchPositionChangeListener;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setRecordingMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setRecordingMode(Z)V

    return-void
.end method

.method public bridge synthetic setSelfieToneMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setSelfieToneMode(Z)V

    return-void
.end method

.method public bridge synthetic setShutterProgress(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setShutterProgress(F)V

    return-void
.end method

.method public bridge synthetic setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->setShutterProgressWheelAnimationEndListener(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$ShutterProgressWheelAnimationEndListener;)V

    return-void
.end method

.method public showBurstShotCounter(Z)V
    .locals 0

    return-void
.end method

.method public showEditButton()V
    .locals 0

    return-void
.end method

.method public bridge synthetic showProgressCircleWithBackground()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->showProgressCircleWithBackground()V

    return-void
.end method

.method public bridge synthetic showProgressCircleWithoutBackground()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->showProgressCircleWithoutBackground()V

    return-void
.end method

.method public bridge synthetic showQuickMenuByAlpha()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->showQuickMenuByAlpha()V

    return-void
.end method

.method public bridge synthetic showQuickTakePressEffect()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->showQuickTakePressEffect()V

    return-void
.end method

.method public bridge synthetic showView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->showView(I)V

    return-void
.end method

.method public bridge synthetic startActiveKeyQuickTakeAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->startActiveKeyQuickTakeAnimation()V

    return-void
.end method

.method public bridge synthetic startQuickSettingItemIntroduceAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->startQuickSettingItemIntroduceAnimation(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method public bridge synthetic startShutterProgressWheel()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->startShutterProgressWheel()V

    return-void
.end method

.method public bridge synthetic startShutterSpinningWheelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->startShutterSpinningWheelAnimation()V

    return-void
.end method

.method public bridge synthetic stopShutterSpinningWheelAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->stopShutterSpinningWheelAnimation()V

    return-void
.end method

.method public bridge synthetic translateIndicator(IIIIII)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->translateIndicator(IIIIII)V

    return-void
.end method

.method public translateShootingModeList(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/ResizableKeyScreenView;->mResizableViewBinding:Lo5/a1;

    iget-object p0, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->translateList(I)V

    :cond_0
    return-void
.end method

.method public updateCenterButtonShrinkState(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$CenterButtonShrinkState;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateChildBackground(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateChildBackground(IZ)V

    return-void
.end method

.method public updateIndicatorLayout(ZF)V
    .locals 0

    return-void
.end method

.method public bridge synthetic updateKeyScreenButtonPositionForFunMode(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateKeyScreenButtonPositionForFunMode(Z)V

    return-void
.end method

.method public bridge synthetic updatePreviewGuideLine(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updatePreviewGuideLine(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic updateProgressCircle(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateProgressCircle(I)V

    return-void
.end method

.method public bridge synthetic updateQuickViewThumbnail()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateQuickViewThumbnail()V

    return-void
.end method

.method public bridge synthetic updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public bridge synthetic updateRemainCounter()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateRemainCounter()V

    return-void
.end method

.method public bridge synthetic updateRightButtonContentDescription(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->updateRightButtonContentDescription(I)V

    return-void
.end method
