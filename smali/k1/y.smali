.class public final Lk1/y;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk1/y;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/List;

.field static final f:Lm1/a0;


# instance fields
.field final a:Lm1/a0;

.field final b:Ljava/util/List;

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk1/y;->d:Ljava/util/List;

    .line 2
    new-instance v0, Lm1/a0;

    invoke-direct {v0}, Lm1/a0;-><init>()V

    sput-object v0, Lk1/y;->f:Lm1/a0;

    new-instance v0, Lk1/z;

    invoke-direct {v0}, Lk1/z;-><init>()V

    sput-object v0, Lk1/y;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lm1/a0;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Lk1/y;->a:Lm1/a0;

    iput-object p2, p0, Lk1/y;->b:Ljava/util/List;

    iput-object p3, p0, Lk1/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk1/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lk1/y;

    iget-object v0, p0, Lk1/y;->a:Lm1/a0;

    .line 3
    iget-object v2, p1, Lk1/y;->a:Lm1/a0;

    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk1/y;->b:Ljava/util/List;

    iget-object v2, p1, Lk1/y;->b:Ljava/util/List;

    .line 4
    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lk1/y;->c:Ljava/lang/String;

    iget-object p1, p1, Lk1/y;->c:Ljava/lang/String;

    .line 5
    invoke-static {p0, p1}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lk1/y;->a:Lm1/a0;

    invoke-virtual {p0}, Lm1/a0;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lk1/y;->a:Lm1/a0;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk1/y;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lk1/y;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4d

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "DeviceOrientationRequestInternal{deviceOrientationRequest="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", clients="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tag=\'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lk1/y;->a:Lm1/a0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lk1/y;->b:Ljava/util/List;

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, p2, v3}, Lc1/c;->n(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p0, p0, Lk1/y;->c:Ljava/lang/String;

    const/4 p2, 0x3

    .line 4
    invoke-static {p1, p2, p0, v3}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
