.class public abstract Le7/t;
.super Lkotlinx/coroutines/internal/o;
.source "AbstractChannel.kt"

# interfaces
.implements Le7/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/o;",
        "Le7/v<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/internal/o;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le7/t;->v()Lkotlinx/coroutines/internal/a0;

    move-result-object p0

    return-object p0
.end method

.method public v()Lkotlinx/coroutines/internal/a0;
    .locals 0

    sget-object p0, Le7/b;->b:Lkotlinx/coroutines/internal/a0;

    return-object p0
.end method

.method public w(Ljava/lang/Object;)Lu6/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lu6/l<",
            "Ljava/lang/Throwable;",
            "Lk6/q;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract x(Le7/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/l<",
            "*>;)V"
        }
    .end annotation
.end method
