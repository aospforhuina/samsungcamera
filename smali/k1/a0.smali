.class public final Lk1/a0;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk1/a0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Lk1/y;

.field final c:Lm1/l;

.field final d:Lk1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk1/b0;

    invoke-direct {v0}, Lk1/b0;-><init>()V

    sput-object v0, Lk1/a0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILk1/y;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lk1/a0;->a:I

    iput-object p2, p0, Lk1/a0;->b:Lk1/y;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lm1/k;->c(Landroid/os/IBinder;)Lm1/l;

    move-result-object p2

    .line 3
    :goto_0
    iput-object p2, p0, Lk1/a0;->c:Lm1/l;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 4
    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lk1/d;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Lk1/d;

    goto :goto_1

    :cond_2
    new-instance p1, Lk1/c;

    invoke-direct {p1, p4}, Lk1/c;-><init>(Landroid/os/IBinder;)V

    .line 7
    :goto_1
    iput-object p1, p0, Lk1/a0;->d:Lk1/d;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lk1/a0;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lk1/a0;->b:Lk1/y;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lk1/a0;->c:Lm1/l;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, p2, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p0, p0, Lk1/a0;->d:Lk1/d;

    if-nez p0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 p0, 0x4

    .line 7
    invoke-static {p1, p0, v1, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
