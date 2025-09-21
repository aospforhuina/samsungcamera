.class public final synthetic Ln5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln5/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Lx5/e$a;

    invoke-static {p0, p1}, Ln5/l;->b(Ljava/util/concurrent/atomic/AtomicReference;Lx5/e$a;)V

    return-void
.end method
