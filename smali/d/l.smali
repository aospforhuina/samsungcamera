.class public Ld/l;
.super Ljava/lang/Object;
.source "XMPSerializerHelper.java"


# direct methods
.method public static a(Ld/h;Ljava/io/OutputStream;Lf/d;)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p2, Lf/d;

    invoke-direct {p2}, Lf/d;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p2}, Lf/d;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ld/h;->i()V

    .line 4
    :cond_1
    new-instance v0, Ld/m;

    invoke-direct {v0}, Ld/m;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ld/m;->h(Lc/d;Ljava/io/OutputStream;Lf/d;)V

    return-void
.end method

.method public static b(Ld/h;Lf/d;)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2
    invoke-static {p0, v0, p1}, Ld/l;->a(Ld/h;Ljava/io/OutputStream;Lf/d;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
