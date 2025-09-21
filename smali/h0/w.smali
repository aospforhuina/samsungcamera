.class public final Lh0/w;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorBitmapDecoder.java"

# interfaces
.implements Lx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx/k<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lh0/n;


# direct methods
.method public constructor <init>(Lh0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh0/w;->a:Lh0/n;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILx/i;)La0/v;
    .locals 0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/w;->c(Landroid/os/ParcelFileDescriptor;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lx/i;)Z
    .locals 0

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2}, Lh0/w;->d(Landroid/os/ParcelFileDescriptor;Lx/i;)Z

    move-result p0

    return p0
.end method

.method public c(Landroid/os/ParcelFileDescriptor;IILx/i;)La0/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "II",
            "Lx/i;",
            ")",
            "La0/v<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh0/w;->a:Lh0/n;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/n;->d(Landroid/os/ParcelFileDescriptor;IILx/i;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/os/ParcelFileDescriptor;Lx/i;)Z
    .locals 0

    iget-object p0, p0, Lh0/w;->a:Lh0/n;

    invoke-virtual {p0, p1}, Lh0/n;->o(Landroid/os/ParcelFileDescriptor;)Z

    move-result p0

    return p0
.end method
