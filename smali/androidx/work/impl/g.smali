.class public final synthetic Landroidx/work/impl/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/WorkerWrapper;

.field public final synthetic b:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/g;->a:Landroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Landroidx/work/impl/g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/g;->a:Landroidx/work/impl/WorkerWrapper;

    iget-object p0, p0, Landroidx/work/impl/g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, p0}, Landroidx/work/impl/WorkerWrapper;->a(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
