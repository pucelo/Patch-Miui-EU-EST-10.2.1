.class final Landroid/os/statistics/JniParcel;
.super Ljava/lang/Object;
.source "JniParcel.java"


# instance fields
.field private final numbers:[J

.field private numbersCount:I

.field private final objects:[Ljava/lang/Object;

.field private objectsCount:I

.field private readPosOfNumbers:I

.field private readPosOfObjects:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    return-void
.end method

.method private writeLong1(J)V
    .registers 6

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_13

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_13
    return-void
.end method

.method private writeLong2(JJ)V
    .registers 8

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_19

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_19
    return-void
.end method

.method private writeLong3(JJJ)V
    .registers 10

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_1f

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_1f
    return-void
.end method

.method private writeLong4(JJJJ)V
    .registers 12

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_25

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_25
    return-void
.end method

.method private writeLong5(JJJJJ)V
    .registers 14

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_2b

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_2b
    return-void
.end method

.method private writeLong6(JJJJJJ)V
    .registers 16

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_31

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_31
    return-void
.end method

.method private writeLong7(JJJJJJJ)V
    .registers 18

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_37

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_37
    return-void
.end method

.method private writeLong8(JJJJJJJJ)V
    .registers 20

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_3d

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x7

    aput-wide p15, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_3d
    return-void
.end method

.method private writeLong9(JJJJJJJJJ)V
    .registers 22

    iget v0, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v0, 0x9

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    array-length v2, v2

    if-gt v1, v2, :cond_43

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aput-wide p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x1

    aput-wide p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x2

    aput-wide p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x3

    aput-wide p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x4

    aput-wide p9, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x5

    aput-wide p11, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x6

    aput-wide p13, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x7

    aput-wide p15, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    add-int/lit8 v2, v0, 0x8

    aput-wide p17, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    :cond_43
    return-void
.end method

.method private writeObject1(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_13

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_13
    return-void
.end method

.method private writeObject2(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_19

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_19
    return-void
.end method

.method private writeObject3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_1f

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_1f
    return-void
.end method

.method private writeObject4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x4

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_25

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_25
    return-void
.end method

.method private writeObject5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_2b

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_2b
    return-void
.end method

.method private writeObject6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x6

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_31

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x6

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_31
    return-void
.end method

.method private writeObject7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_37

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x7

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_37
    return-void
.end method

.method private writeObject8(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 12

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_3d

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_3d
    return-void
.end method

.method private writeObject9(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 13

    iget v0, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v0, 0x9

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    array-length v2, v2

    if-gt v1, v2, :cond_43

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    aput-object p2, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x2

    aput-object p3, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x3

    aput-object p4, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x4

    aput-object p5, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x5

    aput-object p6, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x6

    aput-object p7, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x7

    aput-object p8, v1, v2

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x8

    aput-object p9, v1, v2

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    add-int/lit8 v1, v1, 0x9

    iput v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    :cond_43
    return-void
.end method


# virtual methods
.method public final readLong()J
    .registers 5

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    if-ge v0, v1, :cond_11

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->numbers:[J

    aget-wide v2, v1, v0

    return-wide v2

    :cond_11
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public final readObject()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    if-ge v0, v1, :cond_11

    iget v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget-object v1, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget v2, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    if-ge v0, v2, :cond_18

    iget v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_17

    const-string/jumbo v1, ""

    :cond_17
    return-object v1

    :cond_18
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public final reset()V
    .registers 5

    const/4 v2, 0x0

    iput v2, p0, Landroid/os/statistics/JniParcel;->numbersCount:I

    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfNumbers:I

    iget v1, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v2, p0, Landroid/os/statistics/JniParcel;->objectsCount:I

    iput v2, p0, Landroid/os/statistics/JniParcel;->readPosOfObjects:I

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_16

    iget-object v2, p0, Landroid/os/statistics/JniParcel;->objects:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method
