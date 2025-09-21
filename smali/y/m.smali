.class public final Ly/m;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorRewinder.java"

# interfaces
.implements Ly/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/m$b;,
        Ly/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly/e<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ly/m$b;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ly/m$b;

    invoke-direct {v0, p1}, Ly/m$b;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Ly/m;->a:Ly/m$b;

    return-void
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly/m;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public d()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Ly/m;->a:Ly/m$b;

    invoke-virtual {p0}, Ly/m$b;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method
