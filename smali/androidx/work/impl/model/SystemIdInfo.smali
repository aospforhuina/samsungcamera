.class public final Landroidx/work/impl/model/SystemIdInfo;
.super Ljava/lang/Object;
.source "SystemIdInfo.kt"


# instance fields
.field private final generation:I

.field public final systemId:I

.field public final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    .line 3
    iput p2, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    .line 4
    iput p3, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/work/impl/model/SystemIdInfo;Ljava/lang/String;IIILjava/lang/Object;)Landroidx/work/impl/model/SystemIdInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/model/SystemIdInfo;->copy(Ljava/lang/String;II)Landroidx/work/impl/model/SystemIdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    return p0
.end method

.method public final copy(Ljava/lang/String;II)Landroidx/work/impl/model/SystemIdInfo;
    .locals 0

    const-string p0, "workSpecId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/work/impl/model/SystemIdInfo;

    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/model/SystemIdInfo;-><init>(Ljava/lang/String;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/work/impl/model/SystemIdInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/impl/model/SystemIdInfo;

    iget-object v1, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    iget v3, p1, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    iget p1, p1, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getGeneration()I
    .locals 0

    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemIdInfo(workSpecId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/SystemIdInfo;->workSpecId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/model/SystemIdInfo;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/work/impl/model/SystemIdInfo;->systemId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
