.class public Lb1/s;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb1/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/x;

    invoke-direct {v0}, Lb1/x;-><init>()V

    sput-object v0, Lb1/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lb1/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/s;->a:I

    iput-object p2, p0, Lb1/s;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, Lb1/s;->a:I

    return p0
.end method

.method public final e()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb1/n;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lb1/s;->b:Ljava/util/List;

    return-object p0
.end method

.method public final f(Lb1/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/s;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb1/s;->b:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lb1/s;->b:Ljava/util/List;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lb1/s;->a:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lb1/s;->b:Ljava/util/List;

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v0, p0, v1}, Lc1/c;->n(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 4
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
