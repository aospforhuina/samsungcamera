.class public Le0/u$c;
.super Ljava/lang/Object;
.source "StringLoader.java"

# interfaces
.implements Le0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/o<",
        "Ljava/lang/String;",
        "Ljava/io/InputStream;",
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
.method public a(Le0/r;)Le0/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/r;",
            ")",
            "Le0/n<",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p0, Le0/u;

    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, Le0/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Le0/n;

    move-result-object p1

    invoke-direct {p0, p1}, Le0/u;-><init>(Le0/n;)V

    return-object p0
.end method
