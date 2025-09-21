.class public final Lk1/u;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk1/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Lk1/s;

.field private final c:Lm1/r;

.field private final d:Lm1/o;

.field private final f:Landroid/app/PendingIntent;

.field private final g:Lk1/d;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk1/v;

    invoke-direct {v0}, Lk1/v;-><init>()V

    sput-object v0, Lk1/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILk1/s;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lk1/u;->a:I

    iput-object p2, p0, Lk1/u;->b:Lk1/s;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p3}, Lm1/q;->c(Landroid/os/IBinder;)Lm1/r;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lk1/u;->c:Lm1/r;

    iput-object p5, p0, Lk1/u;->f:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    .line 3
    invoke-static {p4}, Lm1/n;->c(Landroid/os/IBinder;)Lm1/o;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    iput-object p2, p0, Lk1/u;->d:Lm1/o;

    if-eqz p6, :cond_3

    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 4
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 5
    instance-of p2, p1, Lk1/d;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Lk1/d;

    goto :goto_2

    :cond_2
    new-instance p1, Lk1/c;

    invoke-direct {p1, p6}, Lk1/c;-><init>(Landroid/os/IBinder;)V

    :cond_3
    :goto_2
    iput-object p1, p0, Lk1/u;->g:Lk1/d;

    iput-object p7, p0, Lk1/u;->k:Ljava/lang/String;

    return-void
.end method

.method public static d(Lm1/o;Lk1/d;)Lk1/u;
    .locals 9

    new-instance v8, Lk1/u;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v6, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lk1/u;-><init>(ILk1/s;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v8
.end method

.method public static e(Lm1/r;Lk1/d;)Lk1/u;
    .locals 9

    new-instance v8, Lk1/u;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v6, p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lk1/u;-><init>(ILk1/s;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lk1/u;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lk1/u;->b:Lk1/s;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lk1/u;->c:Lm1/r;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    .line 5
    invoke-static {p1, v4, v1, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v4, p0, Lk1/u;->f:Landroid/app/PendingIntent;

    .line 6
    invoke-static {p1, v1, v4, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lk1/u;->d:Lm1/o;

    if-nez p2, :cond_1

    move-object p2, v2

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_1
    const/4 v1, 0x5

    .line 8
    invoke-static {p1, v1, p2, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object p2, p0, Lk1/u;->g:Lk1/d;

    if-nez p2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 p2, 0x6

    .line 10
    invoke-static {p1, p2, v2, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x8

    iget-object p0, p0, Lk1/u;->k:Ljava/lang/String;

    .line 11
    invoke-static {p1, p2, p0, v3}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 12
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
