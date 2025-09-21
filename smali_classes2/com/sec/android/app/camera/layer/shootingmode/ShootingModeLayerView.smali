.class public Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;
.super Landroid/widget/FrameLayout;
.source "ShootingModeLayerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;
.implements Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$View;
.implements Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;
.implements Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;
.implements Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShootingModeLayerView"


# instance fields
.field private mBackKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$BackKeyEventListener;

.field private mLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

.field private mLayerUserInteractionEventListener:Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

.field private mOrientation:I

.field private mTouchAeAfRestrictedAreaDelegate:Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

.field private mViewBinding:Lo5/c1;

.field private mViewOrientationEventListener:Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

.field private mVolumeKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShootingModeLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(ILcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->lambda$onOrientationChanged$0(ILcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;)Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$BackKeyEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mBackKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$BackKeyEventListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mOrientation:I

    return p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;)Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mVolumeKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    return-object p0
.end method

.method private static synthetic lambda$onOrientationChanged$0(ILcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    const-class v0, Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lo5/c1;

    iget-object v2, v2, Lo5/c1;->a:Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lo5/c1;

    iget-object v2, v2, Lo5/c1;->a:Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v2, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewOrientationEventListener:Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mLayerUserInteractionEventListener:Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

    .line 7
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/layer/shootingmode/e;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/layer/shootingmode/e;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/layer/shootingmode/b;

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/layer/shootingmode/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mTouchAeAfRestrictedAreaDelegate:Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    .line 9
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView$1;-><init>(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lo5/c1;

    iget-object p0, p0, Lo5/c1;->a:Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView$2;-><init>(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;)V

    return-object v0
.end method

.method public getTouchAeAfRestrictedLeftArea()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mTouchAeAfRestrictedAreaDelegate:Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/shootingmode/c;->a:Lcom/sec/android/app/camera/layer/shootingmode/c;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTouchAeAfRestrictedRightArea()Landroid/graphics/Rect;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mTouchAeAfRestrictedAreaDelegate:Lcom/sec/android/app/camera/interfaces/TouchAeAfRestrictedAreaDelegate;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/shootingmode/d;->a:Lcom/sec/android/app/camera/layer/shootingmode/d;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mOrientation:I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewOrientationEventListener:Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmode/a;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/layer/shootingmode/a;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mLayerUserInteractionEventListener:Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;->onUserInteraction()V

    :cond_0
    return-void
.end method

.method public setBackKeyEventListener(Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$BackKeyEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mBackKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$BackKeyEventListener;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;)V
    .locals 0

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShootingModeLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    check-cast p1, Lo5/c1;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mViewBinding:Lo5/c1;

    return-void
.end method

.method public setVolumeKeyEventListener(Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->mVolumeKeyEventListener:Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager$VolumeKeyEventListener;

    return-void
.end method
