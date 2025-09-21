.class public final Lo1/b;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lz0/k;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo1/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private b:I

.field private c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/c;

    invoke-direct {v0}, Lo1/c;-><init>()V

    sput-object v0, Lo1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lo1/b;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lo1/b;->a:I

    iput p2, p0, Lo1/b;->b:I

    iput-object p3, p0, Lo1/b;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/common/api/Status;
    .locals 0

    .line 1
    iget p0, p0, Lo1/b;->b:I

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/Status;->n:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo1/b;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget v1, p0, Lo1/b;->b:I

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lo1/b;->c:Landroid/content/Intent;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v1, p0, p2, v2}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
