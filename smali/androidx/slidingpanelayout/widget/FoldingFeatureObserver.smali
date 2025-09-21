.class public final Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;
.super Ljava/lang/Object;
.source "FoldingFeatureObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private job:Lc7/l1;

.field private onFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

.field private final windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;


# direct methods
.method public constructor <init>(Landroidx/window/layout/WindowInfoTracker;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "windowInfoTracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic access$getFoldingFeature(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->getFoldingFeature(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnFoldingFeatureChangeListener$p(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;)Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->onFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getWindowInfoTracker$p(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;)Landroidx/window/layout/WindowInfoTracker;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->windowInfoTracker:Landroidx/window/layout/WindowInfoTracker;

    return-object p0
.end method

.method public static final synthetic access$setOnFoldingFeatureChangeListener$p(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->onFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

    return-void
.end method

.method private final getFoldingFeature(Landroidx/window/layout/WindowLayoutInfo;)Landroidx/window/layout/FoldingFeature;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/window/layout/DisplayFeature;

    .line 3
    instance-of v1, v1, Landroidx/window/layout/FoldingFeature;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 4
    :goto_0
    instance-of p0, p1, Landroidx/window/layout/FoldingFeature;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    check-cast v0, Landroidx/window/layout/FoldingFeature;

    return-object v0
.end method


# virtual methods
.method public final registerLayoutStateChangeCallback(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->job:Lc7/l1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc7/l1$a;->a(Lc7/l1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lc7/e1;->a(Ljava/util/concurrent/Executor;)Lc7/c0;

    move-result-object v0

    invoke-static {v0}, Lc7/h0;->a(Ln6/g;)Lc7/g0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;

    invoke-direct {v5, p0, p1, v1}, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$registerLayoutStateChangeCallback$1;-><init>(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;Landroid/app/Activity;Ln6/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc7/g;->b(Lc7/g0;Ln6/g;Lc7/i0;Lu6/p;ILjava/lang/Object;)Lc7/l1;

    move-result-object p1

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->job:Lc7/l1;

    return-void
.end method

.method public final setOnFoldingFeatureChangeListener(Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;)V
    .locals 1

    const-string v0, "onFoldingFeatureChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->onFoldingFeatureChangeListener:Landroidx/slidingpanelayout/widget/FoldingFeatureObserver$OnFoldingFeatureChangeListener;

    return-void
.end method

.method public final unregisterLayoutStateChangeCallback()V
    .locals 2

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/FoldingFeatureObserver;->job:Lc7/l1;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lc7/l1$a;->a(Lc7/l1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
