.class public final synthetic Ln5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln5/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lx5/e$a;

    invoke-static {p0, p1}, Ln5/l;->e(Ljava/util/concurrent/atomic/AtomicInteger;Lx5/e$a;)V

    return-void
.end method
