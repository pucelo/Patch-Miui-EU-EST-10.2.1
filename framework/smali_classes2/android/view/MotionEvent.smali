.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$1;,
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;
    }
.end annotation


# static fields
.field public static final ACTION_BUTTON_PRESS:I = 0xb

.field public static final ACTION_BUTTON_RELEASE:I = 0xc

.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RELATIVE_X:I = 0x1b

.field public static final AXIS_RELATIVE_Y:I = 0x1c

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SCROLL:I = 0x1a

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field public static final BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final MAX_RECYCLED:I = 0xa

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_EDGE_TOUCH:I = 0x5

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:J

.field private mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_TOUCH_MINOR"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_TOOL_MAJOR"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_TOOL_MINOR"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_ORIENTATION"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_VSCROLL"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_HSCROLL"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_Z"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_RX"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_RY"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_RZ"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_HAT_X"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_HAT_Y"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_LTRIGGER"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_RTRIGGER"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_THROTTLE"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_RUDDER"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_WHEEL"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GAS"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_BRAKE"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_DISTANCE"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_TILT"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_SCROLL"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_REALTIVE_X"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_REALTIVE_Y"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_1"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_2"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_3"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_4"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_5"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_6"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_7"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_8"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_9"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_10"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_11"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_12"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_13"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_14"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_15"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "AXIS_GENERIC_16"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string/jumbo v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string/jumbo v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string/jumbo v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string/jumbo v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const-string/jumbo v2, "BUTTON_STYLUS_PRIMARY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "BUTTON_STYLUS_SECONDARY"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00000080"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00000100"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00000200"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00000400"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00000800"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00001000"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00002000"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00004000"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00008000"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00010000"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00020000"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00040000"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00080000"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00100000"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00200000"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00400000"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x00800000"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x01000000"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x02000000"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x04000000"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x08000000"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x10000000"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x20000000"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x40000000"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "0x80000000"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v1, "TOOL_TYPE_EDGE_TOUCH"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_78

    :pswitch_3
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_96

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_13
    const-string/jumbo v1, "ACTION_DOWN"

    return-object v1

    :pswitch_17
    const-string/jumbo v1, "ACTION_UP"

    return-object v1

    :pswitch_1b
    const-string/jumbo v1, "ACTION_CANCEL"

    return-object v1

    :pswitch_1f
    const-string/jumbo v1, "ACTION_OUTSIDE"

    return-object v1

    :pswitch_23
    const-string/jumbo v1, "ACTION_MOVE"

    return-object v1

    :pswitch_27
    const-string/jumbo v1, "ACTION_HOVER_MOVE"

    return-object v1

    :pswitch_2b
    const-string/jumbo v1, "ACTION_SCROLL"

    return-object v1

    :pswitch_2f
    const-string/jumbo v1, "ACTION_HOVER_ENTER"

    return-object v1

    :pswitch_33
    const-string/jumbo v1, "ACTION_HOVER_EXIT"

    return-object v1

    :pswitch_37
    const-string/jumbo v1, "ACTION_BUTTON_PRESS"

    return-object v1

    :pswitch_3b
    const-string/jumbo v1, "ACTION_BUTTON_RELEASE"

    return-object v1

    :pswitch_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_13
        :pswitch_17
        :pswitch_23
        :pswitch_1b
        :pswitch_1f
        :pswitch_3
        :pswitch_3
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_37
        :pswitch_3b
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x5
        :pswitch_3f
        :pswitch_5b
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .registers 4

    const-string/jumbo v2, "AXIS_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "AXIS_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    return v0

    :cond_1b
    const/16 v2, 0xa

    :try_start_1d
    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_20} :catch_22

    move-result v2

    return v2

    :catch_22
    move-exception v1

    const/4 v2, -0x1

    return v2
.end method

.method public static axisToString(I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AXIS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo v4, "0"

    return-object v4

    :cond_6
    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_8
    if-eqz p0, :cond_2f

    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    :goto_f
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v1, :cond_23

    sget-object v4, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    if-nez v3, :cond_26

    if-nez p0, :cond_1e

    return-object v2

    :cond_1c
    const/4 v1, 0x0

    goto :goto_f

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_26
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_2f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static final clamp(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_a

    return p2

    :cond_a
    return p0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 5

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .registers 3

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_9

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_28

    :cond_9
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_15

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    :goto_10
    if-ge v0, p0, :cond_18

    mul-int/lit8 v0, v0, 0x2

    goto :goto_10

    :cond_15
    const/16 v0, 0x8

    goto :goto_10

    :cond_18
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    :cond_28
    return-void
.end method

.method private static native nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nativeGetXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeSetSource(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeTransform(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .registers 4

    const/4 v3, 0x0

    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v0, :cond_f

    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_20

    monitor-exit v2

    return-object v1

    :cond_f
    :try_start_f
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_20

    monitor-exit v2

    iput-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->prepareForReuse()V

    return-object v0

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 38

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    const/4 v3, 0x1

    :try_start_8
    invoke-static {v3}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    const/4 v3, 0x0

    aget-object v3, v21, v3

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    aget-object v3, v22, v3

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p5

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p6

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p7

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v3, 0x0

    aget-object v3, v22, v3

    move/from16 v0, p8

    iput v0, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/32 v6, 0xf4240

    mul-long v16, p0, v6

    const-wide/32 v6, 0xf4240

    mul-long v18, p2, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x1

    move/from16 v5, p12

    move/from16 v7, p4

    move/from16 v9, p13

    move/from16 v10, p9

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_62
    .catchall {:try_start_8 .. :try_end_62} :catchall_64

    monitor-exit v23

    return-object v2

    :catchall_64
    move-exception v3

    monitor-exit v23

    throw v3
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 35
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    :try_start_3
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/16 v18, 0x0

    :goto_a
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_1e

    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    :cond_1e
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3d

    move-result-object v2

    monitor-exit v19

    return-object v2

    :catchall_3d
    move-exception v2

    monitor-exit v19

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .registers 38

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/32 v4, 0xf4240

    mul-long v14, p0, v4

    const-wide/32 v4, 0xf4240

    mul-long v16, p2, v4

    move/from16 v3, p12

    move/from16 v4, p14

    move/from16 v5, p4

    move/from16 v6, p15

    move/from16 v7, p13

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    invoke-static/range {v1 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x1

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 7

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .registers 3

    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .registers 15

    sget-object v6, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p5, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v0, 0x0

    aget-object v0, v4, v0

    iput p6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move v5, p7

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2f

    monitor-exit v6

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 12

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final addBatch(Landroid/view/MotionEvent;)Z
    .registers 20

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v8

    const/4 v2, 0x2

    if-eq v8, v2, :cond_10

    const/4 v2, 0x7

    if-eq v8, v2, :cond_10

    const/4 v2, 0x0

    return v2

    :cond_10
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v2

    if-eq v8, v2, :cond_1c

    const/4 v2, 0x0

    return v2

    :cond_1c
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v2, v3, :cond_44

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-eq v2, v3, :cond_46

    :cond_44
    const/4 v2, 0x0

    return v2

    :cond_46
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v2

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-ne v2, v3, :cond_44

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v13

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    if-eq v13, v2, :cond_6e

    const/4 v2, 0x0

    return v2

    :cond_6e
    sget-object v15, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v2, 0x2

    :try_start_72
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v14, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v6, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    :goto_7e
    if-ge v12, v13, :cond_ac

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x0

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v16, 0x1

    aget-object v16, v14, v16

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v0}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x0

    aget-object v2, v14, v2

    const/4 v3, 0x1

    aget-object v3, v14, v3

    invoke-static {v2, v3}, Landroid/view/MotionEvent$PointerProperties;->-wrap0(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z
    :try_end_a3
    .catchall {:try_start_72 .. :try_end_a3} :catchall_eb

    move-result v2

    if-nez v2, :cond_a9

    const/4 v2, 0x0

    monitor-exit v15

    return v2

    :cond_a9
    add-int/lit8 v12, v12, 0x1

    goto :goto_7e

    :cond_ac
    :try_start_ac
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v7

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v11

    const/4 v9, 0x0

    :goto_bd
    if-gt v9, v11, :cond_e8

    if-ne v9, v11, :cond_d4

    const/high16 v10, -0x80000000

    :goto_c3
    const/4 v12, 0x0

    :goto_c4
    if-ge v12, v13, :cond_d6

    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v16, v6, v12

    move-object/from16 v0, v16

    invoke-static {v2, v3, v12, v10, v0}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c4

    :cond_d4
    move v10, v9

    goto :goto_c3

    :cond_d6
    move-object/from16 v0, p1

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v10}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v2 .. v7}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_e5
    .catchall {:try_start_ac .. :try_end_e5} :catchall_eb

    add-int/lit8 v9, v9, 0x1

    goto :goto_bd

    :cond_e8
    monitor-exit v15

    const/4 v2, 0x1

    return v2

    :catchall_eb
    move-exception v2

    monitor-exit v15

    throw v2
.end method

.method public final cancel()V
    .registers 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .registers 33

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v4

    sget-object v26, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v26

    :try_start_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v22

    invoke-static/range {v22 .. v22}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v23, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v24, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v25, 0x0

    :goto_18
    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v5, v23, v25

    move/from16 v0, v25

    invoke-static {v6, v7, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v5, v24, v25

    const/high16 v8, -0x80000000

    move/from16 v0, v25

    invoke-static {v6, v7, v0, v8, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v5, v24, v25

    aget-object v6, v24, v25

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v5, v24, v25

    aget-object v6, v24, v25

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v6, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v25, v25, 0x1

    goto :goto_18

    :cond_59
    iget-wide v5, v4, Landroid/view/MotionEvent;->mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v20, v0

    const/high16 v27, -0x80000000

    move-wide/from16 v0, v20

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v20

    invoke-static/range {v5 .. v24}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_d9
    .catchall {:try_start_7 .. :try_end_d9} :catchall_db

    monitor-exit v26

    return-object v4

    :catchall_db
    move-exception v5

    monitor-exit v26

    throw v5
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .registers 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .registers 2

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_2
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    :cond_11
    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    return-void

    :catchall_15
    move-exception v0

    invoke-super {p0}, Landroid/view/InputEvent;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    return v0
.end method

.method public final getActionButton()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAxisValue(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p2, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .registers 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .registers 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalEventTimeNano(I)J
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getHistoricalPressure(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .registers 5

    const/4 v2, 0x0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, v2, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x8

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, v2, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final getPointerCount()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .registers 7

    const/4 v1, 0x0

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_17

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .registers 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final getPressure()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x2

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .registers 5

    const/4 v3, 0x0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x3

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x6

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x7

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x5

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .registers 5

    const/4 v3, 0x0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, v3, v3, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .registers 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v0

    return v0
.end method

.method public final isButtonPressed(I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public final isEdgeTouchEvent()Z
    .registers 5

    const/4 v0, 0x0

    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3, v0}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public final isHoverExitPending()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public final isTainted()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final isTargetAccessibilityFocus()Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public final isTouchEvent()Z
    .registers 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_2d

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v7, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v2

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v8, v0, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    cmpg-float v4, v2, p1

    if-ltz v4, :cond_21

    cmpl-float v4, v2, p3

    if-lez v4, :cond_22

    :cond_21
    return v7

    :cond_22
    cmpg-float v4, v3, p2

    if-ltz v4, :cond_21

    cmpl-float v4, v3, p4

    if-gtz v4, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_2d
    return v8
.end method

.method public final offsetLocation(FF)V
    .registers 5

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-nez v0, :cond_9

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_e

    :cond_9
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    :cond_e
    return-void
.end method

.method public final recycle()V
    .registers 4

    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_18

    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final scale(F)V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    :cond_b
    return-void
.end method

.method public final setAction(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    return-void
.end method

.method public final setActionButton(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    return-void
.end method

.method public final setButtonState(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    return-void
.end method

.method public final setDownTime(J)V
    .registers 8

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    return-void
.end method

.method public final setEdgeFlags(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    return-void
.end method

.method public setHoverExitPending(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_e

    or-int/lit8 v1, v0, 0x4

    :goto_a
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void

    :cond_e
    and-int/lit8 v1, v0, -0x5

    goto :goto_a
.end method

.method public final setLocation(FF)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v2, p1, v0

    sub-float v3, p2, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final setSource(I)V
    .registers 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)I

    return-void
.end method

.method public final setTainted(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_f

    const/high16 v1, -0x80000000

    or-int/2addr v1, v0

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void

    :cond_f
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_b
.end method

.method public final setTargetAccessibilityFocus(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_f

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v0

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void

    :cond_f
    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v1, v0

    goto :goto_b
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .registers 38

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v2

    sget-object v35, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v35

    :try_start_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v34

    invoke-static/range {v34 .. v34}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v22, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    sget-object v28, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    const v3, 0xff00

    and-int v3, v3, v31

    shr-int/lit8 v33, v3, 0x8

    const/16 v29, -0x1

    const/16 v20, 0x0

    const/16 v30, 0x0

    const/16 v26, 0x0

    :goto_35
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_62

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v3, v21, v20

    move/from16 v0, v26

    invoke-static {v4, v5, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v3, v21, v20

    iget v3, v3, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v4, 0x1

    shl-int v27, v4, v3

    and-int v3, v27, p1

    if-eqz v3, :cond_5f

    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_59

    move/from16 v29, v20

    :cond_59
    aput v26, v28, v20

    add-int/lit8 v20, v20, 0x1

    or-int v30, v30, v27

    :cond_5f
    add-int/lit8 v26, v26, 0x1

    goto :goto_35

    :cond_62
    if-nez v20, :cond_70

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "idBits did not match any ids in the event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v3

    monitor-exit v35

    throw v3

    :cond_70
    const/4 v3, 0x5

    move/from16 v0, v32

    if-eq v0, v3, :cond_7a

    const/4 v3, 0x6

    move/from16 v0, v32

    if-ne v0, v3, :cond_c0

    :cond_7a
    if-gez v29, :cond_ad

    const/4 v7, 0x2

    :goto_7d
    :try_start_7d
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v25

    const/16 v23, 0x0

    :goto_87
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_145

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_c3

    const/high16 v24, -0x80000000

    :goto_95
    const/16 v26, 0x0

    :goto_97
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_c6

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget v3, v28, v26

    aget-object v6, v22, v26

    move/from16 v0, v24

    invoke-static {v4, v5, v3, v0, v6}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_97

    :cond_ad
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_bb

    const/4 v3, 0x5

    move/from16 v0, v32

    if-ne v0, v3, :cond_b9

    const/4 v7, 0x0

    goto :goto_7d

    :cond_b9
    const/4 v7, 0x1

    goto :goto_7d

    :cond_bb
    shl-int/lit8 v3, v29, 0x8

    or-int v7, v32, v3

    goto :goto_7d

    :cond_c0
    move/from16 v7, v31

    goto :goto_7d

    :cond_c3
    move/from16 v24, v23

    goto :goto_95

    :cond_c6
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v18

    if-nez v23, :cond_13a

    iget-wide v3, v2, Landroid/view/MotionEvent;->mNativePtr:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetXOffset(J)F

    move-result v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetYOffset(J)F

    move-result v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v16

    invoke-static/range {v3 .. v22}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/view/MotionEvent;->mNativePtr:J

    :goto_136
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_87

    :cond_13a
    iget-wide v8, v2, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v13, 0x0

    move-wide/from16 v10, v18

    move-object/from16 v12, v22

    invoke-static/range {v8 .. v13}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
    :try_end_144
    .catchall {:try_start_7d .. :try_end_144} :catchall_6d

    goto :goto_136

    :cond_145
    monitor-exit v35

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", actionButton="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_2e
    if-ge v0, v2, :cond_9b

    const-string/jumbo v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_9b
    const-string/jumbo v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeTransform(JJ)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
