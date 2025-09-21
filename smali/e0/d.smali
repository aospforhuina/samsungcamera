.class public Le0/d;
.super Ljava/lang/Object;
.source "ByteBufferFileLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/d$a;,
        Le0/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/n<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
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
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Le0/d;->d(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Le0/d;->c(Ljava/io/File;IILx/i;)Le0/n$a;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/io/File;IILx/i;)Le0/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance p0, Le0/n$a;

    new-instance p2, Lt0/b;

    invoke-direct {p2, p1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    new-instance p3, Le0/d$a;

    invoke-direct {p3, p1}, Le0/d$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object p0
.end method

.method public d(Ljava/io/File;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
