.class public Ln4/d;
.super Lr4/k;
.source "DetectLargestRunnable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/k<",
        "Ln4/a;",
        ">;"
    }
.end annotation


# instance fields
.field b:Landroid/net/Uri;

.field c:Landroid/graphics/Bitmap;

.field d:Ln4/a;

.field f:Ln4/e;


# direct methods
.method public constructor <init>(Ln4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/k;-><init>()V

    .line 2
    iput-object p1, p0, Ln4/d;->f:Ln4/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln4/d;->b:Landroid/net/Uri;

    const-string v1, "ScsApi@DetectLargestRunnable"

    if-nez v0, :cond_0

    iget-object v0, p0, Ln4/d;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "RESULT_MISSING_MANDATORY_FIELD!!!"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lr4/k;->a:Lr4/f;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lr4/f;->b(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    iget-object v2, p0, Ln4/d;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    const-string/jumbo v3, "uri"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    const-string v2, "bmp"

    .line 7
    iget-object v3, p0, Ln4/d;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :goto_0
    iget-object v2, p0, Ln4/d;->f:Ln4/e;

    invoke-virtual {v2}, Ln4/e;->k()Lc4/a;

    move-result-object v2

    invoke-interface {v2, v0}, Lc4/a;->J0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "detectLargestBoundary(). retBundle is null!!"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lr4/k;->a:Lr4/f;

    new-instance v1, Lo4/a;

    const/4 v2, 0x5

    const-string v3, "retBundle is null"

    invoke-direct {v1, v2, v3}, Lo4/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/f;->b(Ljava/lang/Exception;)V

    return-void

    :cond_2
    const-string v2, "resultCode"

    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectLargestBoundary(). Abnormal resultCode!!! resultCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1f4

    if-ne v2, v0, :cond_3

    .line 13
    iget-object v1, p0, Lr4/k;->a:Lr4/f;

    new-instance v2, Lo4/a;

    invoke-direct {v2, v0}, Lo4/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lr4/f;->b(Ljava/lang/Exception;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lr4/k;->a:Lr4/f;

    new-instance v1, Lo4/a;

    const/16 v3, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lo4/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lr4/f;->b(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_4
    const-string v1, "rect"

    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 16
    invoke-static {}, Ln4/a;->a()Ln4/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ln4/a;->c(Landroid/graphics/Rect;)Ln4/a;

    move-result-object v0

    iput-object v0, p0, Ln4/d;->d:Ln4/a;

    .line 17
    iget-object v1, p0, Lr4/k;->a:Lr4/f;

    invoke-virtual {v1, v0}, Lr4/f;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    iget-object p0, p0, Lr4/k;->a:Lr4/f;

    invoke-virtual {p0, v0}, Lr4/f;->b(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_IMAGE_GET_LARGEST_BOUNDARY"

    return-object p0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Ln4/d;->b:Landroid/net/Uri;

    return-void
.end method
