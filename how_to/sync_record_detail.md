# Record Sync

In a regular data-display process a *silk:DataProvider* is used to retrieve a list or records from a *SQL Select* command configured in a ORM. Then columns from the returned records will be displayed in a *silk:Table* list. A *silkForm* will be used display the columns in a form format to be shown or edited. In this process each record that is going to be displays or edited is contained in the *silk:DataProvider*. 

<center>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xl="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.1" viewBox="11 192 742 55" width="742" height="55">
  <defs/>
  <metadata> Produced by OmniGraffle 7.19.5\n2022-12-22 14:55:23 +0000</metadata>
  <g id="Canvas_1" fill-opacity="1" stroke-dasharray="none" stroke="none" stroke-opacity="1" fill="none">
    <title>Canvas 1</title>
    <g id="Canvas_1_Layer_1">
      <title>Layer 1</title>
      <g id="Graphic_2">
        <path d="M 138 193 L 215 193 C 219.97056 193 224 197.02944 224 202 L 224 237 C 224 241.97056 219.97056 246 215 246 L 138 246 C 133.02944 246 129 241.97056 129 237 L 129 202 C 129 197.02944 133.02944 193 138 193 Z" fill="white"/>
        <path d="M 138 193 L 215 193 C 219.97056 193 224 197.02944 224 202 L 224 237 C 224 241.97056 219.97056 246 215 246 L 138 246 C 133.02944 246 129 241.97056 129 237 L 129 202 C 129 197.02944 133.02944 193 138 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(134 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="23.972" y="15">ORM</tspan>
        </text>
      </g>
      <g id="Graphic_3">
        <path d="M 255 193 L 347 193 C 351.97056 193 356 197.02944 356 202 L 356 237 C 356 241.97056 351.97056 246 347 246 L 255 246 C 250.02944 246 246 241.97056 246 237 L 246 202 C 246 197.02944 250.02944 193 255 193 Z" fill="white"/>
        <path d="M 255 193 L 347 193 C 351.97056 193 356 197.02944 356 202 L 356 237 C 356 241.97056 351.97056 246 347 246 L 255 246 C 250.02944 246 246 241.97056 246 237 L 246 202 C 246 197.02944 250.02944 193 255 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(251 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="9.392" y="15">Data Outlet</tspan>
        </text>
      </g>
      <g id="Graphic_4">
        <path d="M 387 193 L 479 193 C 483.97056 193 488 197.02944 488 202 L 488 237 C 488 241.97056 483.97056 246 479 246 L 387 246 C 382.02944 246 378 241.97056 378 237 L 378 202 C 378 197.02944 382.02944 193 387 193 Z" fill="white"/>
        <path d="M 387 193 L 479 193 C 483.97056 193 488 197.02944 488 202 L 488 237 C 488 241.97056 483.97056 246 479 246 L 387 246 C 382.02944 246 378 241.97056 378 237 L 378 202 C 378 197.02944 382.02944 193 387 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(383 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="3.48" y="15">DataProvider</tspan>
        </text>
      </g>
      <g id="Graphic_5">
        <path d="M 519 193 L 611 193 C 615.97056 193 620 197.02944 620 202 L 620 237 C 620 241.97056 615.97056 246 611 246 L 519 246 C 514.02944 246 510 241.97056 510 237 L 510 202 C 510 197.02944 514.02944 193 519 193 Z" fill="white"/>
        <path d="M 519 193 L 611 193 C 615.97056 193 620 197.02944 620 202 L 620 237 C 620 241.97056 615.97056 246 611 246 L 519 246 C 514.02944 246 510 241.97056 510 237 L 510 202 C 510 197.02944 514.02944 193 519 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(515 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="31.184" y="15">Table</tspan>
        </text>
      </g>
      <g id="Graphic_6">
        <path d="M 651 193 L 743 193 C 747.9706 193 752 197.02944 752 202 L 752 237 C 752 241.97056 747.9706 246 743 246 L 651 246 C 646.0294 246 642 241.97056 642 237 L 642 202 C 642 197.02944 646.0294 193 651 193 Z" fill="white"/>
        <path d="M 651 193 L 743 193 C 747.9706 193 752 197.02944 752 202 L 752 237 C 752 241.97056 747.9706 246 743 246 L 651 246 C 646.0294 246 642 241.97056 642 237 L 642 202 C 642 197.02944 646.0294 193 651 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(647 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="31.328" y="15">Form</tspan>
        </text>
      </g>
      <g id="Line_7">
        <line x1="225" y1="219.5" x2="245" y2="219.5" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_8">
        <path d="M 357 219.5 L 367 219.5 L 377 219.5" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_9">
        <path d="M 489 219.5 L 499 219.5 L 509 219.5" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_10">
        <path d="M 621 219.5 L 631 219.5 L 641 219.5" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Graphic_11">
        <path d="M 21 193 L 98 193 C 102.97056 193 107 197.02944 107 202 L 107 237 C 107 241.97056 102.97056 246 98 246 L 21 246 C 16.029437 246 12 241.97056 12 237 L 12 202 C 12 197.02944 16.029437 193 21 193 Z" fill="white"/>
        <path d="M 21 193 L 98 193 C 102.97056 193 107 197.02944 107 202 L 107 237 C 107 241.97056 102.97056 246 98 246 L 21 246 C 16.029437 246 12 241.97056 12 237 L 12 202 C 12 197.02944 16.029437 193 21 193 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(17 210.276)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="20.132" y="15">Select</tspan>
        </text>
      </g>
      <g id="Line_12">
        <path d="M 108 219.5 L 118 219.5 L 128 219.5" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
    </g>
  </g>
</svg>
</center>

## Bulk Loading

Considering a select which returns 400 records with 6 columns the data return  will contain a long grid of 2,400 cells. If most of the 6 columns are going to be displayed in the *silk:Table* and the *silk:Form* then extracting all this data is reasonable.

However, if the list will only show 2 columns then extracting the full data, 2,400 cell, may not be the best scenario. To display the table data we only need to have 800 cell (400 rows x 2 columns) which is 60% less data.

A sample of 400 records may not seen dramatic. However if the process requires to retrieve a *select* of 2,500 records with 30 columns then any optimization processes is welcomed.

## Optimized Loading

The ideal and efficient way would be for the *silk:DataProvider* to return the 400 records from our example only containing the 2 necesary columns for the Table. This will result in only 800 data cells.

But, what about the other columns needed by *silk:Form*? 

The solution for this is to retrieve these extra columns only when the form needs these. This regularly happens when the user clicks on a list's row and the *silk:Form* gets populated.

For this to happen we have to use two *selects*. One returning the columns for the table, and another returning the extra columns only for the selected record.

<center>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xl="http://www.w3.org/1999/xlink" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.1" viewBox="-8 345.5 766 147" width="766" height="147">
  <defs/>
  <metadata> Produced by OmniGraffle 7.19.5\n2022-12-22 14:59:25 +0000</metadata>
  <g id="Canvas_1" fill-opacity="1" stroke-dasharray="none" stroke="none" stroke-opacity="1" fill="none">
    <title>Canvas 1</title>
    <g id="Canvas_1_Layer_1">
      <title>Layer 1</title>
      <g id="Graphic_13">
        <path d="M 2 346.5 L 79 346.5 C 83.97056 346.5 88 350.52944 88 355.5 L 88 390.5 C 88 395.47056 83.97056 399.5 79 399.5 L 2 399.5 C -2.9705627 399.5 -7 395.47056 -7 390.5 L -7 355.5 C -7 350.52944 -2.9705627 346.5 2 346.5 Z" fill="white"/>
        <path d="M 2 346.5 L 79 346.5 C 83.97056 346.5 88 350.52944 88 355.5 L 88 390.5 C 88 395.47056 83.97056 399.5 79 399.5 L 2 399.5 C -2.9705627 399.5 -7 395.47056 -7 390.5 L -7 355.5 C -7 350.52944 -2.9705627 346.5 2 346.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(-2 354.552)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="8.284" y="15">Select for </tspan>
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="24.868" y="33.448">table</tspan>
        </text>
      </g>
      <g id="Graphic_14">
        <path d="M 249 392.5 L 341 392.5 C 345.97056 392.5 350 396.52944 350 401.5 L 350 436.5 C 350 441.47056 345.97056 445.5 341 445.5 L 249 445.5 C 244.02944 445.5 240 441.47056 240 436.5 L 240 401.5 C 240 396.52944 244.02944 392.5 249 392.5 Z" fill="white"/>
        <path d="M 249 392.5 L 341 392.5 C 345.97056 392.5 350 396.52944 350 401.5 L 350 436.5 C 350 441.47056 345.97056 445.5 341 445.5 L 249 445.5 C 244.02944 445.5 240 441.47056 240 436.5 L 240 401.5 C 240 396.52944 244.02944 392.5 249 392.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(245 409.776)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="9.392" y="15">Data Outlet</tspan>
        </text>
      </g>
      <g id="Graphic_15">
        <path d="M 381 392.5 L 473 392.5 C 477.97056 392.5 482 396.52944 482 401.5 L 482 436.5 C 482 441.47056 477.97056 445.5 473 445.5 L 381 445.5 C 376.02944 445.5 372 441.47056 372 436.5 L 372 401.5 C 372 396.52944 376.02944 392.5 381 392.5 Z" fill="white"/>
        <path d="M 381 392.5 L 473 392.5 C 477.97056 392.5 482 396.52944 482 401.5 L 482 436.5 C 482 441.47056 477.97056 445.5 473 445.5 L 381 445.5 C 376.02944 445.5 372 441.47056 372 436.5 L 372 401.5 C 372 396.52944 376.02944 392.5 381 392.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(377 409.776)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="3.48" y="15">DataProvider</tspan>
        </text>
      </g>
      <g id="Graphic_16">
        <path d="M 656 346.5 L 748 346.5 C 752.9706 346.5 757 350.52944 757 355.5 L 757 390.5 C 757 395.47056 752.9706 399.5 748 399.5 L 656 399.5 C 651.0294 399.5 647 395.47056 647 390.5 L 647 355.5 C 647 350.52944 651.0294 346.5 656 346.5 Z" fill="white"/>
        <path d="M 656 346.5 L 748 346.5 C 752.9706 346.5 757 350.52944 757 355.5 L 757 390.5 C 757 395.47056 752.9706 399.5 748 399.5 L 656 399.5 C 651.0294 399.5 647 395.47056 647 390.5 L 647 355.5 C 647 350.52944 651.0294 346.5 656 346.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(652 363.776)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="31.184" y="15">Table</tspan>
        </text>
      </g>
      <g id="Graphic_17">
        <path d="M 656 438.5 L 748 438.5 C 752.9706 438.5 757 442.52944 757 447.5 L 757 482.5 C 757 487.47056 752.9706 491.5 748 491.5 L 656 491.5 C 651.0294 491.5 647 487.47056 647 482.5 L 647 447.5 C 647 442.52944 651.0294 438.5 656 438.5 Z" fill="white"/>
        <path d="M 656 438.5 L 748 438.5 C 752.9706 438.5 757 442.52944 757 447.5 L 757 482.5 C 757 487.47056 752.9706 491.5 748 491.5 L 656 491.5 C 651.0294 491.5 647 487.47056 647 482.5 L 647 447.5 C 647 442.52944 651.0294 438.5 656 438.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(652 455.776)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="31.328" y="15">Form</tspan>
        </text>
      </g>
      <g id="Line_19">
        <path d="M 351 419 L 361 419 L 371 419" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_20">
        <path d="M 620.5 373 L 633.25 373 L 646 373" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Graphic_22">
        <path d="M 132 392.5 L 209 392.5 C 213.97056 392.5 218 396.52944 218 401.5 L 218 436.5 C 218 441.47056 213.97056 445.5 209 445.5 L 132 445.5 C 127.02944 445.5 123 441.47056 123 436.5 L 123 401.5 C 123 396.52944 127.02944 392.5 132 392.5 Z" fill="white"/>
        <path d="M 132 392.5 L 209 392.5 C 213.97056 392.5 218 396.52944 218 401.5 L 218 436.5 C 218 441.47056 213.97056 445.5 209 445.5 L 132 445.5 C 127.02944 445.5 123 441.47056 123 436.5 L 123 401.5 C 123 396.52944 127.02944 392.5 132 392.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(128 409.776)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="23.972" y="15">ORM</tspan>
        </text>
      </g>
      <g id="Line_23">
        <path d="M 122 419 L 115.5 419 C 109.97715 419 105.5 414.52285 105.5 409 L 105.5 383 C 105.5 377.47715 101.02285 373 95.5 373 L 89 373" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Graphic_24">
        <path d="M 2 438.5 L 79 438.5 C 83.97056 438.5 88 442.52944 88 447.5 L 88 482.5 C 88 487.47056 83.97056 491.5 79 491.5 L 2 491.5 C -2.9705627 491.5 -7 487.47056 -7 482.5 L -7 447.5 C -7 442.52944 -2.9705627 438.5 2 438.5 Z" fill="white"/>
        <path d="M 2 438.5 L 79 438.5 C 83.97056 438.5 88 442.52944 88 447.5 L 88 482.5 C 88 487.47056 83.97056 491.5 79 491.5 L 2 491.5 C -2.9705627 491.5 -7 487.47056 -7 482.5 L -7 447.5 C -7 442.52944 -2.9705627 438.5 2 438.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(-2 446.552)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="8.284" y="15">Select for </tspan>
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="26.052" y="33.448">form</tspan>
        </text>
      </g>
      <g id="Line_25">
        <path d="M 122 419 L 115.5 419 C 109.97715 419 105.5 423.47715 105.5 429 L 105.5 455 C 105.5 460.52285 101.02285 465 95.5 465 L 89 465" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_26">
        <line x1="219" y1="419" x2="239" y2="419" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Graphic_27">
        <path d="M 518.5 346.5 L 610.5 346.5 C 615.47056 346.5 619.5 350.52944 619.5 355.5 L 619.5 390.5 C 619.5 395.47056 615.47056 399.5 610.5 399.5 L 518.5 399.5 C 513.52944 399.5 509.5 395.47056 509.5 390.5 L 509.5 355.5 C 509.5 350.52944 513.52944 346.5 518.5 346.5 Z" fill="white"/>
        <path d="M 518.5 346.5 L 610.5 346.5 C 615.47056 346.5 619.5 350.52944 619.5 355.5 L 619.5 390.5 C 619.5 395.47056 615.47056 399.5 610.5 399.5 L 518.5 399.5 C 513.52944 399.5 509.5 395.47056 509.5 390.5 L 509.5 355.5 C 509.5 350.52944 513.52944 346.5 518.5 346.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(514.5 354.552)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="7.328" y="15">Load Select </tspan>
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="19.336" y="33.448">for Table</tspan>
        </text>
      </g>
      <g id="Line_28">
        <path d="M 483 419 L 485.75 419 C 491.27285 419 495.75 414.52285 495.75 409 L 495.75 383 C 495.75 377.47715 500.22715 373 505.75 373 L 508.5 373" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Graphic_29">
        <path d="M 518.5 438.5 L 610.5 438.5 C 615.47056 438.5 619.5 442.52944 619.5 447.5 L 619.5 482.5 C 619.5 487.47056 615.47056 491.5 610.5 491.5 L 518.5 491.5 C 513.52944 491.5 509.5 487.47056 509.5 482.5 L 509.5 447.5 C 509.5 442.52944 513.52944 438.5 518.5 438.5 Z" fill="white"/>
        <path d="M 518.5 438.5 L 610.5 438.5 C 615.47056 438.5 619.5 442.52944 619.5 447.5 L 619.5 482.5 C 619.5 487.47056 615.47056 491.5 610.5 491.5 L 518.5 491.5 C 513.52944 491.5 509.5 487.47056 509.5 482.5 L 509.5 447.5 C 509.5 442.52944 513.52944 438.5 518.5 438.5 Z" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
        <text transform="translate(514.5 446.552)" fill="black">
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="7.328" y="15">Load Select </tspan>
          <tspan font-family="Helvetica Neue" font-size="16" fill="black" x="19.48" y="33.448">for Form</tspan>
        </text>
      </g>
      <g id="Line_30">
        <path d="M 483 419 L 485.75 419 C 491.27285 419 495.75 423.47715 495.75 429 L 495.75 455 C 495.75 460.52285 500.22715 465 505.75 465 L 508.5 465" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
      <g id="Line_31">
        <path d="M 620.5 465 L 633.25 465 L 646 465" stroke="black" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"/>
      </g>
    </g>
  </g>
</svg>
  </center>

## Record Sync Process

SILK Provides a process to use two *select*s to manages data. One *select* to fill a table, and another to sync extra records needed for a form.

The *silk:DataProvider* will use one *select* to load the record list. When extra records will be needed the second *select* will be used to retrieve the extra columns will be added to the alrady loaded record.

## The ORM Configuration

To support record syncing an extra *select* has to be added to the ORM. This new select will have the same names as the *select* for the record list but adding the ending "-recordSync". Below is an example of the two selects.

```XML
	<sqlSelect name="list" >
		<![CDATA[
			select
				personID,
				name,
				address,
				email
			from testPerson
		]]>
	</sqlSelect>

	<sqlSelect name="list-recordSync" >
		<![CDATA[
			select
				personID,
				phone,
				monthlyIncome
			from testPerson
			where personID = $P{personID}
		]]>
	</sqlSelect>
```

The recordSync *select* has to return only the record to synchronize and include the table's primary key.

If using the SilkBuilder these *selects* will be added using the IDE interface.

## The silk:DataProvider

In the *silk:dataProvider* tag the property "selectName" is set to the name of *select* which will load the records for the table, and the property *recordSync* as to be set to "true".

```xml
<silk:DataProvider id="personDP" servicePath="/--/--/outlet" selectName="list" recordSync="true" />
```

The method *beforeRecordSync* is used to configure the parameters need to execute the *select* returnig the extra columns.

```javascript
personDP.on("beforeRecordSync",function(){
  personDP.setParameter("personID","<the personID value here>");
});
```

## The silk:Table and silk:Form

There are not change needed for the *silk:Table* or *silk:Form*. When the user clicks on a table row the *recordSync* process will be executed and after the new coumns had been added the *silk:Form* will be refreshed to show newly added records data.

## The recordSync method

If the *silk:DataProvider* is being used alone or with other components and is also configured with ```recordSync="true"``` then the mothod *recordSync* can be executed to retrieve the extra columns. In this case the property *seletedIndex* has to be setup to point at the target record.

```javascript
personDP.selectedIndex = 10;
personDP.recordSync();
```

