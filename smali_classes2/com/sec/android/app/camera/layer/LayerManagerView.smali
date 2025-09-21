.class public Lcom/sec/android/app/camera/layer/LayerManagerView;
.super Landroid/widget/RelativeLayout;
.source "LayerManagerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/LayerManager;
.implements Lcom/sec/android/app/camera/layer/LayerManagerContract$View;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerManagerView"


# instance fields
.field private mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

.field private final mLayerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

.field private mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

.field private mOrientation:I

.field private mPostInitialized:Z

.field private mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

.field private mViewBinding:Lo5/p0;

.field private mViewVisibilityEventManager:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    .line 8
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/layer/LayerManagerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/LayerManagerView;->lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private applyBaseLine(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setHorizontalTabletGuidelines(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a04df

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    const v1, 0x7f0a00c8

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/Guideline;

    const v2, 0x7f0a0368

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/Guideline;

    .line 6
    sget-object v3, Lu3/g;->d:Lu3/g;

    invoke-static {v3}, Lu3/d;->a(Lu3/g;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    sget-object v2, Lu3/g;->k:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    :goto_0
    const v0, 0x7f0a0416

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/Util;->updateShutterAreaGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/LayerManagerView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/LayerManagerView;->lambda$initialize$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private initializeDimScreenLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->a:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->a:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getDimScreenLayerPresenter(Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;)Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->DIM_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeKeyScreenLayer()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->b:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getKeyScreenLayerPresenter(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$View;)Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->applyBaseLine(Landroid/view/View;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;->initialize()V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v3, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v2, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->setFlingEventListener(Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->setScrollEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;)V

    return-void
.end method

.method private initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflate-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : Start["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "LayerManagerView"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 4
    sget-object v2, Lcom/sec/android/app/camera/layer/LayerManagerView$1;->$SwitchMap$com$sec$android$app$camera$layer$LayerManagerView$LayerId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeDimScreenLayer()V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializePopupLayer()V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeShootingModeOverlayLayer()V

    goto :goto_0

    .line 8
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeMenuLayer()V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeKeyScreenLayer()V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeShootingModeLayer()V

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializePreviewOverlayLayer()V

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializePreviewAnimationLayer()V

    .line 13
    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : End["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initializeMenuLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->d:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getMenuLayerPresenter(Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$View;)Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePopupLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->f:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getPopupLayerPresenter(Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$View;)Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePreviewAnimationLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->g:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getPreviewAnimationLayerPresenter(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$View;)Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;)V

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->initialize()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_ANIMATION_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePreviewOverlayLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->k:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->k:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getPreviewOverlayLayerPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$View;)Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->applyBaseLine(Landroid/view/View;)V

    .line 6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->initialize()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeShootingModeLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->l:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->l:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getShootingModeLayerPresenter(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$View;)Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeShootingModeOverlayLayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->m:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->m:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v1}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->setViewBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getShootingModeOverlayLayerPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;)Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;)V

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerView;->initialize()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p0, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private registerKeyEventListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getDimScreenLayerManager()Lcom/sec/android/app/camera/interfaces/DimScreenLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/popup/PopupLayerView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->registerKeyEventListener(Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;)V

    return-void
.end method

.method private registerTouchEventListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    return-void
.end method

.method private registerUserInteractionEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;->registerUserInteractionEventListener(Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;)V

    return-void
.end method

.method private unRegisterAllKeyEventListeners()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->unRegisterAllKeyEventListeners()V

    return-void
.end method

.method private unRegisterTouchEventListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->unRegisterTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    return-void
.end method

.method private unRegisterUserInteractionEventListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;->unRegisterUserInteractionEventListener(Lcom/sec/android/app/camera/layer/listener/LayerUserInteractionEventListener;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/interfaces/BaseContract$View;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->clear()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/m;->a:Lcom/sec/android/app/camera/layer/m;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/l;->a:Lcom/sec/android/app/camera/layer/l;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/n;->a:Lcom/sec/android/app/camera/layer/n;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/k;->a:Lcom/sec/android/app/camera/layer/k;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public destroyFunModeTouchViewStub()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->n:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v0, v0, Lo5/p0;->n:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->isKeyDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDimScreenLayerManager()Lcom/sec/android/app/camera/interfaces/DimScreenLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->DIM_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/DimScreenLayerManager;

    return-object p0
.end method

.method public getFunModeTouchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object p0, p0, Lo5/p0;->o:Landroid/view/View;

    return-object p0
.end method

.method public getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    return-object p0
.end method

.method public getMenuLayerManager()Lcom/sec/android/app/camera/interfaces/MenuLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->MENU_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager;

    return-object p0
.end method

.method public getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    return-object p0
.end method

.method public getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->POPUP_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    return-object p0
.end method

.method public getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_ANIMATION_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    return-object p0
.end method

.method public getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_OVERLAY_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    return-object p0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->SHOOTING_MODE_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    return-object p0
.end method

.method public getTouchDelegateViewStub()Landroid/view/ViewStub;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object p0, p0, Lo5/p0;->n:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {p0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object p0

    return-object p0
.end method

.method public getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    return-object p0
.end method

.method public initialize()V
    .locals 3

    const-string v0, "InflatePreLoadingLayer"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v0, "Launch - InflatePreLoadingLayer"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getLayerGestureManager()Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    .line 4
    new-instance v1, Lcom/sec/android/app/camera/layer/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/i;-><init>(Lcom/sec/android/app/camera/layer/LayerManagerView;)V

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->o:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/camera/layer/j;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/j;-><init>(Lcom/sec/android/app/camera/layer/LayerManagerView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getLayerKeyEventManager()Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v1}, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;->getUserInteractionEventManager()Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    .line 8
    new-instance v1, Lcom/sec/android/app/camera/layer/ViewVisibilityEventManagerImpl;

    invoke-direct {v1}, Lcom/sec/android/app/camera/layer/ViewVisibilityEventManagerImpl;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewVisibilityEventManager:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->PREVIEW_ANIMATION_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    const/4 p0, 0x0

    .line 11
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 12
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    return p0
.end method

.method public onBackPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerKeyEventManager:Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onLowMemory(I)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->setOrientation(I)V

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->values()[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    iget v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->KEY_SCREEN_LAYER:Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object p1, p1, Lo5/p0;->b:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->applyBaseLine(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->unRegisterTouchEventListener()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->unRegisterAllKeyEventListeners()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->unRegisterUserInteractionEventListener()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;->stop()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->saveLatestThumbnail()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerUserInteractionEventManager:Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;->onUserInteraction()V

    return-void
.end method

.method public postInitialize()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "InflateLazyLoadingLayer"

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    const-string v0, "Launch - InflateLazyLoadingLayer"

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPostInitialized:Z

    .line 5
    invoke-static {}, Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;->values()[Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 6
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 7
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/layer/LayerManagerView;->initializeLayer(Lcom/sec/android/app/camera/layer/LayerManagerView$LayerId;)V

    .line 8
    iget v6, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v6, :cond_1

    .line 9
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerMap:Ljava/util/EnumMap;

    invoke-virtual {v6, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    iget v6, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mOrientation:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object v1, v1, Lo5/p0;->b:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;->postInitialize()V

    .line 11
    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 12
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;->start()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->registerTouchEventListener()V

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->registerKeyEventListener()V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->registerUserInteractionEventListener()V

    return-void
.end method

.method public refreshOrientation(I)V
    .locals 1

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->onOrientationChanged(I)V

    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    return-void
.end method

.method public setKeyScreenLayerVisibility(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyScreenLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    iget-object p0, p0, Lo5/p0;->b:Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setLayerScaleEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mLayerPreviewTouchEventManager:Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->setScaleEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleEventListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerManagerView;->setPresenter(Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mPresenter:Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;

    return-void
.end method

.method public setPreviewOverlayLayerVisibility(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreviewOverlayLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setShootingModeLayerVisibility(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShootingModeLayerVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerManagerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/LayerManagerView;->getShootingModeLayerManager()Lcom/sec/android/app/camera/interfaces/ShootingModeLayerManager;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    check-cast p1, Lo5/p0;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerView;->mViewBinding:Lo5/p0;

    return-void
.end method
