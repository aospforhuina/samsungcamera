.class public abstract Ln2/w;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ln2/w$a;

    invoke-direct {v0, p0}, Ln2/w$a;-><init>(Ln2/w;)V

    return-object v0
.end method

.method public abstract b(Lu2/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;)Ln2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ln2/k;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lq2/g;

    invoke-direct {v0}, Lq2/g;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Lq2/g;->Q()Ln2/k;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract d(Lu2/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "TT;)V"
        }
    .end annotation
.end method
