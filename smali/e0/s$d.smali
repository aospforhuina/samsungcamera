.class public Le0/s$d;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Le0/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le0/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Le0/r;)Le0/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/r;",
            ")",
            "Le0/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Le0/s;

    iget-object p0, p0, Le0/s$d;->a:Landroid/content/res/Resources;

    invoke-static {}, Le0/v;->c()Le0/v;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Le0/s;-><init>(Landroid/content/res/Resources;Le0/n;)V

    return-object p1
.end method
