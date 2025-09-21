.class public Lk0/a;
.super Ljava/lang/Object;
.source "FileDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/k<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/a;->c(Ljava/io/File;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lk0/a;->d(Ljava/io/File;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/io/File;IILx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance p0, Lk0/b;

    invoke-direct {p0, p1}, Lk0/b;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public d(Ljava/io/File;Lx/i;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
