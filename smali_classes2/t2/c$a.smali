.class Lt2/c$a;
.super Ljava/lang/Object;
.source "SqlTimestampTypeAdapter.java"

# interfaces
.implements Ln2/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/e;",
            "Lcom/google/gson/reflect/a<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/gson/reflect/a;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Ljava/sql/Timestamp;

    const/4 v0, 0x0

    if-ne p0, p2, :cond_0

    .line 2
    const-class p0, Ljava/util/Date;

    invoke-virtual {p1, p0}, Ln2/e;->l(Ljava/lang/Class;)Ln2/w;

    move-result-object p0

    .line 3
    new-instance p1, Lt2/c;

    invoke-direct {p1, p0, v0}, Lt2/c;-><init>(Ln2/w;Lt2/c$a;)V

    return-object p1

    :cond_0
    return-object v0
.end method
