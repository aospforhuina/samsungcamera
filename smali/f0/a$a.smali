.class public Lf0/a$a;
.super Ljava/lang/Object;
.source "HttpGlideUrlLoader.java"

# interfaces
.implements Le0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/o<",
        "Le0/g;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Le0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/m<",
            "Le0/g;",
            "Le0/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le0/m;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Le0/m;-><init>(J)V

    iput-object v0, p0, Lf0/a$a;->a:Le0/m;

    return-void
.end method


# virtual methods
.method public a(Le0/r;)Le0/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/r;",
            ")",
            "Le0/n<",
            "Le0/g;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance p1, Lf0/a;

    iget-object p0, p0, Lf0/a$a;->a:Le0/m;

    invoke-direct {p1, p0}, Lf0/a;-><init>(Le0/m;)V

    return-object p1
.end method
