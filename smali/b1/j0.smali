.class public final Lb1/j0;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/j0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:Landroid/accounts/Account;

.field private final c:I

.field private final d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/k0;

    invoke-direct {v0}, Lb1/k0;-><init>()V

    sput-object v0, Lb1/j0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/j0;->a:I

    iput-object p2, p0, Lb1/j0;->b:Landroid/accounts/Account;

    iput p3, p0, Lb1/j0;->c:I

    iput-object p4, p0, Lb1/j0;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1, p2, p3}, Lb1/j0;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lb1/j0;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lb1/j0;->b:Landroid/accounts/Account;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget v1, p0, Lb1/j0;->c:I

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lb1/j0;->d:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p0, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
