.class public Le0/s$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/o<",
        "Ljava/lang/Integer;",
        "Landroid/os/ParcelFileDescriptor;",
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
    iput-object p1, p0, Le0/s$b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public a(Le0/r;)Le0/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/r;",
            ")",
            "Le0/n<",
            "Ljava/lang/Integer;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le0/s;

    iget-object p0, p0, Le0/s$b;->a:Landroid/content/res/Resources;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    .line 2
    invoke-virtual {p1, v1, v2}, Le0/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Le0/n;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Le0/s;-><init>(Landroid/content/res/Resources;Le0/n;)V

    return-object v0
.end method
