.class public final Lb1/l0;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/l0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Landroid/os/IBinder;

.field private final c:Ly0/a;

.field private final d:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/m0;

    invoke-direct {v0}, Lb1/m0;-><init>()V

    sput-object v0, Lb1/l0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ly0/a;ZZ)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/l0;->a:I

    iput-object p2, p0, Lb1/l0;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lb1/l0;->c:Ly0/a;

    iput-boolean p4, p0, Lb1/l0;->d:Z

    iput-boolean p5, p0, Lb1/l0;->f:Z

    return-void
.end method


# virtual methods
.method public final d()Ly0/a;
    .locals 0

    iget-object p0, p0, Lb1/l0;->c:Ly0/a;

    return-object p0
.end method

.method public final e()Lb1/j;
    .locals 0

    iget-object p0, p0, Lb1/l0;->b:Landroid/os/IBinder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lb1/j$a;->c(Landroid/os/IBinder;)Lb1/j;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lb1/l0;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lb1/l0;

    iget-object v2, p0, Lb1/l0;->c:Ly0/a;

    iget-object v3, p1, Lb1/l0;->c:Ly0/a;

    .line 3
    invoke-virtual {v2, v3}, Ly0/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p0}, Lb1/l0;->e()Lb1/j;

    move-result-object p0

    invoke-virtual {p1}, Lb1/l0;->e()Lb1/j;

    move-result-object p1

    invoke-static {p0, p1}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lb1/l0;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lb1/l0;->b:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lc1/c;->f(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lb1/l0;->c:Ly0/a;

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-boolean p2, p0, Lb1/l0;->d:Z

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p0, p0, Lb1/l0;->f:Z

    const/4 p2, 0x5

    .line 6
    invoke-static {p1, p2, p0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
