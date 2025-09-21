.class public final Lk1/s;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk1/s;",
            ">;"
        }
    .end annotation
.end field

.field static final p:Ljava/util/List;


# instance fields
.field final a:Lcom/google/android/gms/location/LocationRequest;

.field final b:Ljava/util/List;

.field final c:Ljava/lang/String;

.field final d:Z

.field final f:Z

.field final g:Z

.field final k:Ljava/lang/String;

.field final l:Z

.field m:Z

.field final n:Ljava/lang/String;

.field o:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lk1/s;->p:Ljava/util/List;

    new-instance v0, Lk1/t;

    invoke-direct {v0}, Lk1/t;-><init>()V

    sput-object v0, Lk1/s;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, Lk1/s;->b:Ljava/util/List;

    iput-object p3, p0, Lk1/s;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lk1/s;->d:Z

    iput-boolean p5, p0, Lk1/s;->f:Z

    iput-boolean p6, p0, Lk1/s;->g:Z

    iput-object p7, p0, Lk1/s;->k:Ljava/lang/String;

    iput-boolean p8, p0, Lk1/s;->l:Z

    iput-boolean p9, p0, Lk1/s;->m:Z

    iput-object p10, p0, Lk1/s;->n:Ljava/lang/String;

    iput-wide p11, p0, Lk1/s;->o:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lk1/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lk1/s;

    iget-object v0, p0, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    .line 3
    iget-object v2, p1, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/s;->b:Ljava/util/List;

    iget-object v2, p1, Lk1/s;->b:Ljava/util/List;

    .line 4
    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/s;->c:Ljava/lang/String;

    iget-object v2, p1, Lk1/s;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lk1/s;->d:Z

    iget-boolean v2, p1, Lk1/s;->d:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lk1/s;->f:Z

    iget-boolean v2, p1, Lk1/s;->f:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lk1/s;->g:Z

    iget-boolean v2, p1, Lk1/s;->g:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lk1/s;->k:Ljava/lang/String;

    iget-object v2, p1, Lk1/s;->k:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lk1/s;->l:Z

    iget-boolean v2, p1, Lk1/s;->l:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lk1/s;->m:Z

    iget-boolean v2, p1, Lk1/s;->m:Z

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lk1/s;->n:Ljava/lang/String;

    iget-object p1, p1, Lk1/s;->n:Ljava/lang/String;

    .line 7
    invoke-static {p0, p1}, Lb1/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/s;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/s;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lk1/s;->k:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/s;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lk1/s;->n:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " contextAttributionTag="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/s;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " hideAppOps="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk1/s;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/s;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk1/s;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk1/s;->g:Z

    if-eqz v1, :cond_3

    const-string v1, " exemptFromBackgroundThrottle"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lk1/s;->l:Z

    if-eqz v1, :cond_4

    const-string v1, " locationSettingsIgnored"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean p0, p0, Lk1/s;->m:Z

    if-eqz p0, :cond_5

    const-string p0, " inaccurateLocationsDelayed"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lk1/s;->a:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lk1/s;->b:Ljava/util/List;

    const/4 v1, 0x5

    .line 3
    invoke-static {p1, v1, p2, v3}, Lc1/c;->n(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object p2, p0, Lk1/s;->c:Ljava/lang/String;

    const/4 v1, 0x6

    .line 4
    invoke-static {p1, v1, p2, v3}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lk1/s;->d:Z

    const/4 v1, 0x7

    .line 5
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lk1/s;->f:Z

    const/16 v1, 0x8

    .line 6
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lk1/s;->g:Z

    const/16 v1, 0x9

    .line 7
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lk1/s;->k:Ljava/lang/String;

    const/16 v1, 0xa

    .line 8
    invoke-static {p1, v1, p2, v3}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lk1/s;->l:Z

    const/16 v1, 0xb

    .line 9
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lk1/s;->m:Z

    const/16 v1, 0xc

    .line 10
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lk1/s;->n:Ljava/lang/String;

    const/16 v1, 0xd

    .line 11
    invoke-static {p1, v1, p2, v3}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v1, p0, Lk1/s;->o:J

    const/16 p0, 0xe

    .line 12
    invoke-static {p1, p0, v1, v2}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    .line 13
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
