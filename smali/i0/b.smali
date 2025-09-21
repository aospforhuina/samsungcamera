.class public Li0/b;
.super Ljava/lang/Object;
.source "BytesResource.java"

# interfaces
.implements La0/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La0/v<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Li0/b;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Li0/b;->a:[B

    array-length p0, p0

    return p0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Li0/b;->a:[B

    return-object p0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "[B>;"
        }
    .end annotation

    const-class p0, [B

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li0/b;->b()[B

    move-result-object p0

    return-object p0
.end method

.method public recycle()V
    .locals 0

    return-void
.end method
