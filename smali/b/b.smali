.class public final synthetic Lb/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Lb/b;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lb/b;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object p0, p0, Lb/b;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, p0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->a(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
