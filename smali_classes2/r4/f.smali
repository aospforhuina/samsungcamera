.class public Lr4/f;
.super Ljava/lang/Object;
.source "TaskCompletionSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lr4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr4/h;

    invoke-direct {v0}, Lr4/h;-><init>()V

    iput-object v0, p0, Lr4/f;->a:Lr4/h;

    return-void
.end method


# virtual methods
.method public a()Lr4/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lr4/f;->a:Lr4/h;

    return-object p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lr4/f;->a:Lr4/h;

    invoke-virtual {p0, p1}, Lr4/h;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object p0, p0, Lr4/f;->a:Lr4/h;

    invoke-virtual {p0, p1}, Lr4/h;->l(Ljava/lang/Object;)V

    return-void
.end method
