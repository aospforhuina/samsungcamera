.class public Lb1/g;
.super Lc1/a;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field c:I

.field d:Ljava/lang/String;

.field f:Landroid/os/IBinder;

.field g:[Lcom/google/android/gms/common/api/Scope;

.field k:Landroid/os/Bundle;

.field l:Landroid/accounts/Account;

.field m:[Ly0/c;

.field n:[Ly0/c;

.field o:Z

.field p:I

.field q:Z

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/c1;

    invoke-direct {v0}, Lb1/c1;-><init>()V

    sput-object v0, Lb1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ly0/c;[Ly0/c;ZIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/g;->a:I

    iput p2, p0, Lb1/g;->b:I

    iput p3, p0, Lb1/g;->c:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lb1/g;->d:Ljava/lang/String;

    goto :goto_0

    .line 2
    :cond_0
    iput-object p4, p0, Lb1/g;->d:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    if-eqz p5, :cond_1

    .line 3
    invoke-static {p5}, Lb1/j$a;->c(Landroid/os/IBinder;)Lb1/j;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lb1/a;->e(Lb1/j;)Landroid/accounts/Account;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lb1/g;->l:Landroid/accounts/Account;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lb1/g;->f:Landroid/os/IBinder;

    iput-object p8, p0, Lb1/g;->l:Landroid/accounts/Account;

    :goto_2
    iput-object p6, p0, Lb1/g;->g:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lb1/g;->k:Landroid/os/Bundle;

    iput-object p9, p0, Lb1/g;->m:[Ly0/c;

    iput-object p10, p0, Lb1/g;->n:[Ly0/c;

    iput-boolean p11, p0, Lb1/g;->o:Z

    iput p12, p0, Lb1/g;->p:I

    iput-boolean p13, p0, Lb1/g;->q:Z

    iput-object p14, p0, Lb1/g;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lc1/a;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lb1/g;->a:I

    sget v0, Ly0/e;->a:I

    iput v0, p0, Lb1/g;->c:I

    iput p1, p0, Lb1/g;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb1/g;->o:Z

    iput-object p2, p0, Lb1/g;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb1/g;->r:Ljava/lang/String;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lb1/c1;->a(Lb1/g;Landroid/os/Parcel;I)V

    return-void
.end method
