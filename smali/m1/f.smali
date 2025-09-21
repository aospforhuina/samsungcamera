.class public final Lm1/f;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Lz0/k;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm1/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lm1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/u;

    invoke-direct {v0}, Lm1/u;-><init>()V

    sput-object v0, Lm1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lm1/g;)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Lm1/f;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lm1/f;->b:Lm1/g;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, Lm1/f;->a:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public d()Lm1/g;
    .locals 0

    iget-object p0, p0, Lm1/f;->b:Lm1/g;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lm1/f;->c()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lm1/f;->d()Lm1/g;

    move-result-object p0

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p0, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
