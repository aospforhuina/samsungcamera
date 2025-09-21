.class public Le0/b;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/b$d;,
        Le0/b$a;,
        Le0/b$c;,
        Le0/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le0/n<",
        "[BTData;>;"
    }
.end annotation


# instance fields
.field private final a:Le0/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/b$b<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le0/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le0/b;->a:Le0/b$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Le0/b;->d([B)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Le0/b;->c([BIILx/i;)Le0/n$a;

    move-result-object p0

    return-object p0
.end method

.method public c([BIILx/i;)Le0/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "TData;>;"
        }
    .end annotation

    new-instance p2, Le0/n$a;

    new-instance p3, Lt0/b;

    invoke-direct {p3, p1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Le0/b$c;

    iget-object p0, p0, Le0/b;->a:Le0/b$b;

    invoke-direct {p4, p1, p0}, Le0/b$c;-><init>([BLe0/b$b;)V

    invoke-direct {p2, p3, p4}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object p2
.end method

.method public d([B)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
