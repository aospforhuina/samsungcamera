.class public Lp1/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


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
.field private final a:Lp1/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/q<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp1/q;

    invoke-direct {v0}, Lp1/q;-><init>()V

    iput-object v0, p0, Lp1/f;->a:Lp1/q;

    return-void
.end method


# virtual methods
.method public a()Lp1/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp1/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lp1/f;->a:Lp1/q;

    return-object p0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lp1/f;->a:Lp1/q;

    invoke-virtual {p0, p1}, Lp1/q;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object p0, p0, Lp1/f;->a:Lp1/q;

    invoke-virtual {p0, p1}, Lp1/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 0

    iget-object p0, p0, Lp1/f;->a:Lp1/q;

    invoke-virtual {p0, p1}, Lp1/q;->k(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object p0, p0, Lp1/f;->a:Lp1/q;

    invoke-virtual {p0, p1}, Lp1/q;->l(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
